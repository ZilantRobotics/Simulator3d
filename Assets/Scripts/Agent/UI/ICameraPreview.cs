using UnityEngine;

namespace Assets.Scripts.Agent.UI
{
    public interface ICameraPreview
    {
        public RenderTextureDisplayer AddCamera(string name, string label, Camera camera);
    }
}
