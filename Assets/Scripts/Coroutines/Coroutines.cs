using System.Collections;
using UnityEngine;

namespace Assets.Scripts.Coroutines
{
    public class Coroutines : MonoBehaviour
    {
        public new Coroutine StartCoroutine(IEnumerator enumerator)
        {
            return base.StartCoroutine(enumerator);
        }

        public new void StopCoroutine(Coroutine coroutine)
        {
            base.StopCoroutine(coroutine);
        }
    }
}
