using Assets.Scripts.MainMenu.SceneSelection;
using Assets.Scripts.Selection;
using Assets.Scripts.UI;
using UnityEngine.UI;

namespace Assets.Scripts.SceneSelection
{
    public class SceneSelectionManager : ISelectedSceneProvider
    {
        private readonly Image _scenePreviewImage;

        private readonly ItemSelectionManager<Scene, SceneView> _selectionManager;

        public SceneSelectionManager(
            ItemSelectionManager<Scene, SceneView> selectionManager,
            Image scenePreviewImage,
            Scene[] scenes,
            ScrollRect selectionScroll)
        {
            _selectionManager = selectionManager;
            _scenePreviewImage = scenePreviewImage;

            _selectionManager.OnItemSelected.AddListener(OnSceneSelected);
            _selectionManager.SetItems(scenes);
        }

        private void OnSceneSelected(Scene item)
        {
            if (_scenePreviewImage != null) 
                _scenePreviewImage.sprite = item.ImageSprite;
            if (_scenePreviewImage != null)
                _scenePreviewImage.enabled = true;
        }

        public int GetSelectedSceneIndex()
        {
            return _selectionManager.SelectedItem.SceneIndex;
        }
    }
}
