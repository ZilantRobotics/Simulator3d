using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectStateSwitcher : MonoBehaviour
{
    [SerializeField]
    private GameObject _targetObject;

    public GameObject TargetObject { get => _targetObject; set => _targetObject = value; }

    public void SwitchState() => TargetObject?.SetActive(!TargetObject.activeSelf);
}
