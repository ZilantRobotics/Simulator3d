using System.Collections.Generic;
using UnityEngine;
using System.Text;

namespace Apollo
{
    public static class Utils
    {
        public interface IOneOf
        {
            KeyValuePair<string, object> GetOne();
        }

        public interface IOneOf<T> : IOneOf where T : IOneOf<T> { }
    }
}