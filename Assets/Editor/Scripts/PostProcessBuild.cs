using System;
using System.IO;
using System.IO.Compression;
using UnityEditor;
using UnityEditor.Callbacks;

public class PostProcessBuild
{
    public static string archiveFileName;

    [PostProcessBuild]
    public static void OnBuildComplete(BuildTarget buildTarget, string pathToBuiltProject)
    {
        ArchiveBuild(pathToBuiltProject);
        IncrementBuildNumber();
        AssetDatabase.SaveAssets();
    }

    private static void IncrementBuildNumber()
    {
        string[] numbers = PlayerSettings.bundleVersion.Split('.');
        string major = numbers[0];
        string minor = numbers[1];
        string patch = numbers[2];       

        int patchNum = Convert.ToInt32(patch);
        patchNum++;
        PlayerSettings.bundleVersion = major + "." + minor + "." + patchNum; 
    }

    private static void ArchiveBuild(string pathToBuiltProject)
    {
        archiveFileName = Path.Combine(Directory.GetParent(
            Path.GetDirectoryName(pathToBuiltProject)).Parent.ToString(), string.Format(
#if UNITY_STANDALONE_WIN
        "ZilantSimulator-Win64-{0}.zip", PlayerSettings.bundleVersion));
#elif UNITY_STANDALONE_LINUX
        "ZilantSimulator-Linux64-{0}.zip", PlayerSettings.bundleVersion));
#elif UNITY_STANDALONE_OSX
        "ZilantSimulator-MacOS-{0}.zip", PlayerSettings.bundleVersion));
#endif
        ZipFile.CreateFromDirectory(Path.GetDirectoryName(pathToBuiltProject), archiveFileName);
    }
}
