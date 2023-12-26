using System.Collections.Generic;
using Assets.Scripts.Agent.UI;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class UserInterfaceTweakables : MonoBehaviour
{
    public UnityEvent OnDependenciesSet;

    private IAgentTweakingUI _agentTweakingUI;

    private ICameraPreview _cameraPreview;

    public void SetDependencies(IAgentTweakingUI agentTweakingUI, ICameraPreview cameraPreview)
    {
        _agentTweakingUI = agentTweakingUI;
        _cameraPreview = cameraPreview;
        OnDependenciesSet.Invoke();
    }

    public Slider AddFloatSlider(string name, string label, float min, float max, float init)
    {
        return _agentTweakingUI.AddSlider(name, label, min, max, init);
    }

    public InputField AddTextbox(string name, string label, string initial)
    {
        return _agentTweakingUI.AddTextbox(name, label, initial);
    }

    public Toggle AddCheckbox(string name, string label, bool init)
    {
        return _agentTweakingUI.AddCheckbox(name, label, init);
    }

    public RenderTextureDisplayer AddCameraPreview(string name, string label, Camera camera)
    {
        return _cameraPreview.AddCamera(name, label, camera);
    }

    public Dropdown AddDropdown(string name, string label, List<string> types)
    {
        return _agentTweakingUI.AddDropdown(name, label, types);
    }
}
