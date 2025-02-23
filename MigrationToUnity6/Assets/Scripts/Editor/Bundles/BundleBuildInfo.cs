using UnityEngine;

[System.Serializable]
public class BundleBuildInfo
{
    [Tooltip("Name of the final AssetBundle file (without extension).")]
    public string bundleName = "newbundle";

    [Tooltip("Either a single prefab/asset OR a folder containing multiple assets.")]
    public Object assetOrFolder;
}