using Assets.Scripts.ScriptableObjects;

namespace Assets.Scripts.Shaders
{
    public class ShaderConstantsInitializer
    {
        public ShaderConstantsInitializer(InfraredShaderConstants infraredShaderConstants)
        {
            infraredShaderConstants.Set();
        }
    }
}
