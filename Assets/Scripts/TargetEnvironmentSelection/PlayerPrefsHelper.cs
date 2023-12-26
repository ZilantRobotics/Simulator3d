using UnityEngine;

namespace Assets.Scripts.TargetEnvironmentSelection
{
    public static class PlayerPrefsHelper
    {
        public static TargetEnvironment TargetEnvironment 
        {
            get => (TargetEnvironment)PlayerPrefs.GetInt(TargetEnvironmentKey, (int)DefaultTargetEnvironment);
            set => PlayerPrefs.SetInt(TargetEnvironmentKey, (int)value);
        }

        private const string TargetEnvironmentKey = "TARGET_ENVIRONMENT";

        private const TargetEnvironment DefaultTargetEnvironment = TargetEnvironment.ROS;
    }
}