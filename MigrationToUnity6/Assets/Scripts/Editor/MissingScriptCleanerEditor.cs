using UnityEditor;
using UnityEngine;

// Place this script in an Editor folder (e.g., Assets/Scripts/Editor)
[CustomEditor(typeof(MissingScriptCleaner))]
public class MissingScriptCleanerEditor : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        if (GUILayout.Button("Remove Missing Scripts in Children"))
        {
            MissingScriptCleaner cleaner = (MissingScriptCleaner)target;

            // Register Undo so the user can Ctrl+Z if needed
            Undo.RegisterFullObjectHierarchyUndo(cleaner.gameObject, "Remove Missing Scripts");

            cleaner.RemoveMissingScriptsRecursively();
            Debug.Log("Missing scripts removed from this GameObject and all children (Editor-only).");
        }
    }
}