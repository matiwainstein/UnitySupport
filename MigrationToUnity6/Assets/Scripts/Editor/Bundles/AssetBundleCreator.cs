using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;

public class AssetBundleCreator : EditorWindow
{
    [SerializeField] 
    private string outputPath = "Assets/AssetBundles";

    [SerializeField] 
    private BuildTarget buildTarget = BuildTarget.StandaloneWindows64;

    [SerializeField] 
    private List<BundleBuildInfo> bundles = new List<BundleBuildInfo>();

    private SerializedObject serializedObj;
    private SerializedProperty propOutputPath;
    private SerializedProperty propBuildTarget;
    private SerializedProperty propBundles;

    [MenuItem("Tools/Asset Bundle Creator")]
    public static void ShowWindow()
    {
        var window = GetWindow<AssetBundleCreator>("Asset Bundle Creator");
        window.Show();
    }

    private void OnEnable()
    {
        serializedObj = new SerializedObject(this);
        propOutputPath = serializedObj.FindProperty("outputPath");
        propBuildTarget = serializedObj.FindProperty("buildTarget");
        propBundles = serializedObj.FindProperty("bundles");
    }

    private void OnGUI()
    {
        serializedObj.Update();

        EditorGUILayout.PropertyField(propOutputPath, new GUIContent("Output Path"));
        EditorGUILayout.PropertyField(propBuildTarget, new GUIContent("Build Target"));
        EditorGUILayout.PropertyField(propBundles, new GUIContent("Bundles"), true);

        GUILayout.Space(10);

        if (GUILayout.Button("Build Bundles"))
        {
            BuildAllBundles();
        }

        serializedObj.ApplyModifiedProperties();
    }

    private void BuildAllBundles()
    {
        // Make sure directory exists
        if (!Directory.Exists(outputPath))
        {
            Directory.CreateDirectory(outputPath);
        }

        // Prepare an AssetBundleBuild array
        List<AssetBundleBuild> buildMap = new List<AssetBundleBuild>();

        foreach (var bundleInfo in bundles)
        {
            if (bundleInfo.assetOrFolder == null)
            {
                Debug.LogWarning($"Skipping bundle '{bundleInfo.bundleName}': No asset/folder assigned.");
                continue;
            }

            // Gather all asset paths for this bundle
            string[] assetPaths = GetAssetPaths(bundleInfo.assetOrFolder);
            if (assetPaths.Length == 0)
            {
                Debug.LogWarning($"Skipping bundle '{bundleInfo.bundleName}': No valid assets found in '{bundleInfo.assetOrFolder.name}'.");
                continue;
            }

            // Create the AssetBundleBuild entry
            AssetBundleBuild abb = new AssetBundleBuild
            {
                assetBundleName = bundleInfo.bundleName.ToLower(), // usually lowercased
                assetNames = assetPaths
            };
            buildMap.Add(abb);

            Debug.Log($"Prepared bundle '{bundleInfo.bundleName}' with {assetPaths.Length} asset(s).");
        }

        // Actually build all bundles
        if (buildMap.Count == 0)
        {
            Debug.LogWarning("No bundles to build. Please check your settings.");
            return;
        }

        BuildPipeline.BuildAssetBundles(
            outputPath, 
            buildMap.ToArray(),
            BuildAssetBundleOptions.None,
            buildTarget
        );

        Debug.Log($"Successfully built {buildMap.Count} bundles to: {outputPath}");
    }

    /// <summary>
    /// Returns an array of asset paths for either a single asset or all assets in a folder.
    /// </summary>
    private string[] GetAssetPaths(Object assetOrFolder)
    {
        string path = AssetDatabase.GetAssetPath(assetOrFolder);

        // If it's a folder, gather all assets in it (recursively).
        if (AssetDatabase.IsValidFolder(path))
        {
            List<string> results = new List<string>();
            string[] guids = AssetDatabase.FindAssets("", new[] { path });
            foreach (var guid in guids)
            {
                string assetPath = AssetDatabase.GUIDToAssetPath(guid);
                // Optionally skip if it's a folder or not a prefab, etc.
                // For now we include everything in that folder:
                if (!AssetDatabase.IsValidFolder(assetPath))
                {
                    results.Add(assetPath);
                }
            }
            return results.ToArray();
        }
        else
        {
            // Single asset
            return new string[] { path };
        }
    }
}
