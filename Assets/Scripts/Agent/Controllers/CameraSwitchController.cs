using UnityEngine;

[RequireComponent(typeof(OrbitCamera), typeof(FlyThroughCamera))]
public class CameraSwitchController : MonoBehaviour
{
    [SerializeField]
    private OrbitCamera _orbitCamera;

    [SerializeField]
    private FlyThroughCamera _flyThroughCamera;

    [SerializeField]
    private Transform _targetTransform;

    private void Update()
    {
        SwitchCameraState();
    }

    private void SwitchCameraState()
    {
        if (Input.GetKeyDown(KeyCode.V))
        {
            if (_orbitCamera != null && _flyThroughCamera != null) 
            {
                _orbitCamera.enabled = !_orbitCamera.enabled;
                _flyThroughCamera.enabled = !_flyThroughCamera.enabled;

                transform.parent = _orbitCamera.enabled ? _targetTransform : null;
            }
        }          
    }
}
