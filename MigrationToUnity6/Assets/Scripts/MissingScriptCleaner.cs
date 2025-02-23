using UnityEngine;

public class MissingScriptCleaner : MonoBehaviour
{
    /// <summary>
    /// Recursively removes missing scripts in this GameObject and all children.
    /// </summary>
    public void RemoveMissingScriptsRecursively()
    {
        RemoveMissingScriptsOnGameObject(gameObject);
    }

    private void RemoveMissingScriptsOnGameObject(GameObject obj)
    {
#if UNITY_EDITOR
        // Remove missing scripts on this object
        UnityEditor.GameObjectUtility.RemoveMonoBehavioursWithMissingScript(obj);

        // Repeat for children
        for (int i = 0; i < obj.transform.childCount; i++)
        {
            RemoveMissingScriptsOnGameObject(obj.transform.GetChild(i).gameObject);
        }
#else
        Debug.LogWarning("RemoveMissingScripts is Editor-only and won't work in a build.");
#endif
    }
}