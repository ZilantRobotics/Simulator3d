using Assets.Scripts.Constants;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SettingsManager : MonoBehaviour
{
    [SerializeField]
    private Dropdown _qualityDropDown;

    [SerializeField]
    private Toggle _fpsTargetValueToggle;

    void Start()
    {
        SetQualityNames();
        SetFPSTargetValueToggleListener();
    }

    private void SetQualityNames()
    {
        var names = QualitySettings.names;
        for (var i = 0; i < names.Length; i++)
        {
            _qualityDropDown.value = i;
            _qualityDropDown.options.Add(new Dropdown.OptionData(names[i]));
        }

        _qualityDropDown.value = QualitySettings.GetQualityLevel();
        _qualityDropDown.onValueChanged.AddListener(delegate { SetRenderingQuality(_qualityDropDown.value); });
        SetRenderingQuality(QualitySettings.GetQualityLevel());
    }

    private static void SetRenderingQuality(int value)
    {
        _ = value switch
        {
            0 => Camera.main.farClipPlane = 2000f,
            1 => Camera.main.farClipPlane = 2500f,
            _ => Camera.main.farClipPlane = 10000f
        };

        QualitySettings.SetQualityLevel(value, true);
        SetLODBiasSettings();
    }

    private static void SetLODBiasSettings()
    {
        _ = QualitySettings.GetQualityLevel() switch
        {
            0 => QualitySettings.lodBias = 1f,
            1 => QualitySettings.lodBias = 1.5f,
            _ => QualitySettings.lodBias = 2
        };                 
    }

    private void SetFPSTargetValueToggleListener()
    {
        if (_fpsTargetValueToggle)
        {
            if (PlayerPrefs.HasKey(PlayerPrefKeys.FpsLimitation))
            {
                _fpsTargetValueToggle.isOn = PlayerPrefs.GetInt(PlayerPrefKeys.FpsLimitation) == 0 ? false : true;
            }
            else
            {
                _fpsTargetValueToggle.isOn = false;
            }

            OnFPSTargetValueChanged(_fpsTargetValueToggle.isOn);

            _fpsTargetValueToggle.onValueChanged.AddListener(delegate
            {
                PlayerPrefs.SetInt(PlayerPrefKeys.FpsLimitation, _fpsTargetValueToggle.isOn == false ? 0 : 1);
                OnFPSTargetValueChanged(_fpsTargetValueToggle.isOn);
            });
        }
    }

    private static void OnFPSTargetValueChanged(bool isEnabled)
    {
        Application.targetFrameRate = isEnabled ? 25 : 0;
    }
}
