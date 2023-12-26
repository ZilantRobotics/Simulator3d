using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(RawImage))]
public class RenderTextureDisplayer : MonoBehaviour
{
    public struct Marker
    {
        public Image Image;
        public RectTransform RectTransfrom;
    }
    public RenderTexture RenderTexture;
    public Camera RenderCamera;

    private RawImage _uiImage;
    private List<Marker> _markers;
    private List<bool> _isMarkerFree = new List<bool>();

    private void Awake()
    {
        _uiImage = GetComponent<RawImage>();
        _markers = new List<Marker>();
    }

    private void Update()
    {
        if (RenderCamera != null)
        {
            RenderTexture = RenderCamera.targetTexture;
        }

        if (_uiImage.texture != RenderTexture)
        {
            _uiImage.texture = RenderTexture;
        }
    }

    public void ClearMarkers()
    {
        for (int i = 0; i < _markers.Count; i++)
        {
            var marker = _markers[i];
            marker.Image.gameObject.SetActive(false);
            _isMarkerFree[i] = true;

        }
    }

    private Marker GetFreeMarker()
    {
        for (int i = 0; i < _markers.Count; i++)
        {
            if (_isMarkerFree[i])
            {
                _isMarkerFree[i] = false;
                return _markers[i];
            }
        }
        var marker = new GameObject();
        marker.transform.parent = transform;
        var image = marker.AddComponent<Image>();
        _markers.Add(new Marker() { Image = image, RectTransfrom = marker.GetComponent<RectTransform>() });
        _isMarkerFree.Add(false);
        return _markers[_markers.Count - 1];
    }

    public void DrawRectangleMarker(Rect rect, Color color)
    {
        var x = rect.x * _uiImage.rectTransform.sizeDelta.x;
        var y = rect.y * _uiImage.rectTransform.sizeDelta.y;
        var width = rect.width * _uiImage.rectTransform.sizeDelta.x;
        var height = rect.height * _uiImage.rectTransform.sizeDelta.y;

        Marker marker = GetFreeMarker();

        var rt = marker.RectTransfrom;
        var image = marker.Image;
        rt.anchorMin = new Vector2(0, 1);
        rt.anchorMax = new Vector2(0, 1);
        rt.anchoredPosition = new Vector3(x, -y, 0);
        rt.sizeDelta = new Vector3(width, height);
        image.color = color;
        image.gameObject.SetActive(true);
    }
}