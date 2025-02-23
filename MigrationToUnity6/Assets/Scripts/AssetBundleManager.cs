using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;
using System.IO;
using UnityEngine.Networking;
using System.Collections;

public class AssetBundleManager : MonoBehaviour
{
    [System.Serializable]
    public class BundleInfo
    {
        public string buttonKey;
        public string bundleFileName;
        public string prefabName;
        public Transform parentTransform;
    }

    public List<BundleInfo> bundles = new List<BundleInfo>();
    public bool enableDebugLogs = true;

#if UNITY_ANDROID
    private static readonly string platformFolder = "Android";
#elif UNITY_IOS
    private static readonly string platformFolder = "iOS";
#else
    private static readonly string platformFolder = "";
#endif

    // Called by UI Buttons
    public void OnButtonClicked(string buttonKey)
    {
        // Find matching config
        var info = bundles.Find(b => b.buttonKey == buttonKey);
        if (info == null)
        {
            Debug.LogError($"No matching bundle config found for key: {buttonKey}");
            return;
        }

        // Build path: StreamingAssets/PlatformFolder/bundleFileName
        string folderPath = Path.Combine(Application.streamingAssetsPath, platformFolder);
        string bundlePath = Path.Combine(folderPath, info.bundleFileName);

        // We can check if we are on Android to do a special approach
#if UNITY_ANDROID && !UNITY_EDITOR
        // On Android device (not in Editor), let's do UnityWebRequest
        if (enableDebugLogs) Debug.Log($"(Android) Using UnityWebRequest to load bundle at: {bundlePath}");
        StartCoroutine(LoadBundleAndroidWebRequest(bundlePath, info));
#else
        // On other platforms or in Editor, try direct LoadFromFile
        if (enableDebugLogs) Debug.Log($"Using LoadFromFile at: {bundlePath}");
        if (File.Exists(bundlePath))
        {
            AssetBundle bundle = AssetBundle.LoadFromFile(bundlePath);
            if (bundle == null)
            {
                Debug.LogError($"Failed to load AssetBundle from file: {bundlePath}");
                return;
            }
            InstantiatePrefabFromBundle(bundle, info);
        }
        else
        {
            Debug.LogError($"File does not exist at path: {bundlePath}");
        }
#endif
    }

    private IEnumerator LoadBundleAndroidWebRequest(string bundleURL, BundleInfo info)
    {
        // For Android, we assume the file is inside jar:file, so we need UnityWebRequest
        using (UnityWebRequest www = UnityWebRequestAssetBundle.GetAssetBundle(bundleURL))
        {
            yield return www.SendWebRequest();
            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError($"UnityWebRequest error: {www.error}");
                yield break;
            }
            AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(www);
            if (bundle == null)
            {
                Debug.LogError($"Failed to get AssetBundle from web request: {bundleURL}");
                yield break;
            }

            InstantiatePrefabFromBundle(bundle, info);
        }
    }

    private void InstantiatePrefabFromBundle(AssetBundle bundle, BundleInfo info)
    {
        if (enableDebugLogs) Debug.Log($"Loading prefab '{info.prefabName}' from bundle...");
        GameObject loadedPrefab = bundle.LoadAsset<GameObject>(info.prefabName);
        if (loadedPrefab == null)
        {
            Debug.LogError($"Prefab '{info.prefabName}' not found in bundle: {info.bundleFileName}");
            bundle.Unload(false);
            return;
        }

        if (enableDebugLogs) Debug.Log($"Instantiating prefab '{info.prefabName}'...");
        Transform parent = info.parentTransform != null ? info.parentTransform : null;
        GameObject instance = Instantiate(loadedPrefab, parent);

        instance.transform.localPosition = Vector3.zero;
        instance.transform.localRotation = Quaternion.identity;

        // keep the loaded assets but free the bundle file
        bundle.Unload(false);

        if (enableDebugLogs) Debug.Log($"Instantiation complete for key: {info.buttonKey}");
    }
}
