using System.IO;
using UnityEngine;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.UI
{
    public class CameraPreview : ICameraPreview
    {
        private readonly IAgentUI _agentUI;

        private readonly GameObject _cameraPreviewPrefab;

        public CameraPreview(
            IAgentUI agentUI,
            GameObject cameraPreviewPrefab)
        {
            _agentUI = agentUI;
            _cameraPreviewPrefab = cameraPreviewPrefab;
        }

        public RenderTextureDisplayer AddCamera(string name, string label, Camera camera)
        {
            var ui = Object.Instantiate(_cameraPreviewPrefab, _agentUI.View.CameraPreviewsContainer);
            ui.name = name;
            ui.GetComponentInChildren<Text>().text = name;
            var cameraPreview = ui.GetComponent<RenderTextureDisplayer>();
            cameraPreview.RenderCamera = camera;
            cameraPreview.gameObject.SetActive(false);
            return cameraPreview;
        }
    }
}
