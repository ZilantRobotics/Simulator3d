using UnityEngine;

namespace Assets.Scripts.ScriptableObjects
{
    [CreateAssetMenu(fileName = "InfraredShaderConstants", menuName = "Settings/Shader Constants/Infrared Shader Constants", order = 1)]
    public class InfraredShaderConstants : ScriptableObject
    {
        public float EnvironmentTemperature = 24;

        public float MinTemperature = 0;

        public float MaxTemperature = 60;

        public float SelfTemperatureCoefficient = 1;

        public float EnvironmentTemperatureCoefficient = 1;

        public void Set()
        {
            Shader.SetGlobalFloat("_EnvironmentTemperature", EnvironmentTemperature);
            Shader.SetGlobalFloat("_MinTemperature", MinTemperature);
            Shader.SetGlobalFloat("_MaxTemperature", MaxTemperature);
            Shader.SetGlobalFloat("_SelfTemperatureCoefficient", SelfTemperatureCoefficient);
            Shader.SetGlobalFloat("_EnvironmentTemperatureCoefficient", EnvironmentTemperatureCoefficient);
        }
    }
}
