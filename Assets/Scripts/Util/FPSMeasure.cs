using UnityEngine;
using UnityEngine.UI;

public class FPSMeasure : MonoBehaviour
{
    public Text FPSText;

    private float _lastTime;
    private int _frames;

    void Start()
    {
        _lastTime = Time.time;
        _frames = 0;
    }

    void Update()
    {
        _frames++;

        float now = Time.time;

        if (now >= _lastTime + 1.0f)
        {
            float delta = now - _lastTime;
            _lastTime = now;

            float fps = _frames / delta;
            FPSText.text = $"FPS: {fps:###0.0}";

            _frames = 0;
        }
    }
}
