using UnityEngine;
using UnityEditor;
using UnityEditor.Animations;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// Advanced editor tool that removes missing scripts from selected prefabs, including nested prefabs,
/// and removes missing StateMachineBehaviours from Animator controllers.
/// Place in an \"Editor\" folder.
/// </summary>
public static class RemoveMissingScriptsEditor
{
    [MenuItem("Tools/Remove Missing Scripts (Advanced)")]
    private static void RemoveMissingScriptsFromSelectedPrefabs()
    {
        var selectedObjects = Selection.objects;
        if (selectedObjects == null || selectedObjects.Length == 0)
        {
            Debug.LogWarning("No prefabs selected.");
            return;
        }

        // Keep track of visited prefabs so we don't process the same prefab multiple times (in case of nested references).
        HashSet<string> visitedPrefabPaths = new HashSet<string>();

        int totalRemoved = 0;
        foreach (var obj in selectedObjects)
        {
            string assetPath = AssetDatabase.GetAssetPath(obj);
            if (string.IsNullOrEmpty(assetPath) ||
                !assetPath.EndsWith(".prefab", System.StringComparison.OrdinalIgnoreCase))
            {
                continue; // Not a prefab
            }

            // Process the prefab (and nested ones)
            totalRemoved += ProcessPrefab(assetPath, visitedPrefabPaths);
        }

        if (totalRemoved > 0)
            Debug.Log($"[RemoveMissingScripts] Finished removing missing scripts. Total scripts removed: {totalRemoved}.");
        else
            Debug.Log("[RemoveMissingScripts] No missing scripts or behaviours found.");
    }

    /// <summary>
    /// Processes a prefab at 'assetPath': loads it, removes missing scripts, checks for nested prefabs, saves it.
    /// Returns how many missing scripts were removed in total (including nested).
    /// </summary>
    private static int ProcessPrefab(string assetPath, HashSet<string> visited)
    {
        if (visited.Contains(assetPath))
            return 0; // Already processed this prefab

        visited.Add(assetPath);

        GameObject prefabRoot = PrefabUtility.LoadPrefabContents(assetPath);
        if (prefabRoot == null)
            return 0; // Could not load as a prefab

        int removedCount = 0;
        // Remove missing scripts from this prefab's hierarchy
        removedCount += RemoveMissingScriptsInHierarchy(prefabRoot);

        // Remove missing scripts in all AnimatorControllers used by Animators in this hierarchy
        removedCount += RemoveMissingBehavioursInAnimators(prefabRoot);

        // Detect nested prefab instances and recursively process them
        // (Nested prefabs are references to other prefab assets in child objects.)
        removedCount += ProcessNestedPrefabs(prefabRoot, visited);

        // If we removed anything, save
        if (removedCount > 0)
        {
            PrefabUtility.SaveAsPrefabAsset(prefabRoot, assetPath);
            Debug.Log($"[RemoveMissingScripts] Removed {removedCount} missing script(s) from prefab: {Path.GetFileName(assetPath)}");
        }

        PrefabUtility.UnloadPrefabContents(prefabRoot);
        return removedCount;
    }

    /// <summary>
    /// Recursively removes missing scripts from the entire hierarchy of a GameObject.
    /// </summary>
    private static int RemoveMissingScriptsInHierarchy(GameObject root)
    {
        int totalRemoved = 0;
        foreach (Transform child in root.transform)
        {
            totalRemoved += RemoveMissingScriptsInHierarchy(child.gameObject);
        }

        totalRemoved += RemoveMissingScriptsOnSingleGameObject(root);
        return totalRemoved;
    }

    /// <summary>
    /// Removes missing scripts from a single GameObject via SerializedObject/SerializedProperty.
    /// </summary>
    private static int RemoveMissingScriptsOnSingleGameObject(GameObject go)
    {
        int removedCount = 0;

        Component[] components = go.GetComponents<Component>();
        SerializedObject so = new SerializedObject(go);
        SerializedProperty prop = so.FindProperty("m_Component");

        // Iterate in reverse to avoid messing up array size as we remove
        for (int i = components.Length - 1; i >= 0; i--)
        {
            if (components[i] == null)
            {
                prop.DeleteArrayElementAtIndex(i);
                removedCount++;
            }
        }

        if (removedCount > 0)
            so.ApplyModifiedProperties();

        return removedCount;
    }

    /// <summary>
    /// Finds all Animator components in the hierarchy and removes missing StateMachineBehaviours
    /// from any AnimatorController they reference.
    /// </summary>
    private static int RemoveMissingBehavioursInAnimators(GameObject root)
    {
        int removedCount = 0;
        // Find all animators in the hierarchy
        Animator[] animators = root.GetComponentsInChildren<Animator>(true);
        foreach (Animator animator in animators)
        {
            var controller = animator.runtimeAnimatorController as AnimatorController;
            if (controller == null) continue; // No valid AnimatorController

            // We remove missing StateMachineBehaviours from that controller
            removedCount += RemoveMissingBehavioursFromController(controller);
        }
        return removedCount;
    }

    /// <summary>
    /// Removes null (missing) StateMachineBehaviours in all states/sub-states from the given controller.
    /// </summary>
    private static int RemoveMissingBehavioursFromController(AnimatorController controller)
    {
        if (controller == null) return 0;

        int removed = 0;
        // We'll iterate each layer, each state, plus sub-state machines
        for (int i = 0; i < controller.layers.Length; i++)
        {
            var sm = controller.layers[i].stateMachine;
            removed += CleanStateMachine(sm);
        }

        if (removed > 0)
        {
            EditorUtility.SetDirty(controller); // Mark the controller as dirty so we can save changes
            AssetDatabase.SaveAssets();         // Save the .controller file to disk
        }
        return removed;
    }

    /// <summary>
    /// Recursively removes missing behaviours in a state machine and its children.
    /// </summary>
    private static int CleanStateMachine(AnimatorStateMachine stateMachine)
    {
        int removed = 0;

        // Clean each state in this state machine
        var states = stateMachine.states; // array of ChildAnimatorState
        for (int i = 0; i < states.Length; i++)
        {
            var state = states[i].state;
            var behaviours = state.behaviours;
            if (behaviours == null || behaviours.Length == 0) continue;

            // Rebuild a list of non-null behaviours
            var newList = new List<StateMachineBehaviour>();
            foreach (var b in behaviours)
            {
                if (b != null) newList.Add(b);
            }

            int diff = behaviours.Length - newList.Count;
            if (diff > 0)
            {
                state.behaviours = newList.ToArray();
                removed += diff;
            }
        }

        // Clean sub-state machines
        var sms = stateMachine.stateMachines; // array of ChildAnimatorStateMachine
        for (int i = 0; i < sms.Length; i++)
        {
            removed += CleanStateMachine(sms[i].stateMachine);
        }

        return removed;
    }

    /// <summary>
    /// Detects nested prefab instances in the given prefabRoot. If a child object is a nested prefab instance,
    /// this will load that prefab asset and process it (recursively), returning how many scripts got removed.
    /// </summary>
    private static int ProcessNestedPrefabs(GameObject prefabRoot, HashSet<string> visited)
    {
        int removedCount = 0;
        // For each child, check if it's part of a nested prefab
        foreach (Transform child in prefabRoot.transform)
        {
            // If the child itself is the root of a nested prefab instance
            // or is part of a nested prefab, we can find its source asset
            if (PrefabUtility.IsAnyPrefabInstanceRoot(child.gameObject))
            {
                // This is a nested prefab instance root
                var nestedSource = PrefabUtility.GetCorrespondingObjectFromSource(child.gameObject);
                if (nestedSource != null)
                {
                    string nestedPath = AssetDatabase.GetAssetPath(nestedSource);
                    if (!string.IsNullOrEmpty(nestedPath) && nestedPath.EndsWith(".prefab"))
                    {
                        // Recursively process that nested prefab
                        removedCount += ProcessPrefab(nestedPath, visited);
                    }
                }
            }

            // We must still recurse further down to catch deeper nested prefabs
            removedCount += ProcessNestedPrefabs(child.gameObject, visited);
        }
        return removedCount;
    }
}
