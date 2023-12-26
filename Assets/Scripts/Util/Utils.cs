using System.Collections.Generic;
using UnityEngine;
using System.Text;
using System;
using System.Collections;
using System.Runtime.CompilerServices;

namespace Assets.Scripts.Util
{
    public static class Utils
    {
        public class MinHeap
        {
            private readonly int[] _elements;
            public int MaxSize
            {
                get; private set;
            }
            private int _size;
            public int Size
            {
                get
                {
                    return _size;
                }
            }

            public MinHeap(int size)
            {
                _elements = new int[size];
                MaxSize = size;
            }

            private int GetLeftChildIndex(int elementIndex) => 2 * elementIndex + 1;
            private int GetRightChildIndex(int elementIndex) => 2 * elementIndex + 2;
            private int GetParentIndex(int elementIndex) => (elementIndex - 1) / 2;

            private bool HasLeftChild(int elementIndex) => GetLeftChildIndex(elementIndex) < _size;
            private bool HasRightChild(int elementIndex) => GetRightChildIndex(elementIndex) < _size;
            private bool IsRoot(int elementIndex) => elementIndex == 0;

            private int GetLeftChild(int elementIndex) => _elements[GetLeftChildIndex(elementIndex)];
            private int GetRightChild(int elementIndex) => _elements[GetRightChildIndex(elementIndex)];
            private int GetParent(int elementIndex) => _elements[GetParentIndex(elementIndex)];

            private void Swap(int firstIndex, int secondIndex)
            {
                var temp = _elements[firstIndex];
                _elements[firstIndex] = _elements[secondIndex];
                _elements[secondIndex] = temp;
            }

            public bool IsEmpty()
            {
                return _size == 0;
            }

            public int Peek()
            {
                if (_size == 0)
                    throw new IndexOutOfRangeException();

                return _elements[0];
            }

            public int Pop()
            {
                if (_size == 0)
                    throw new IndexOutOfRangeException();

                var result = _elements[0];
                _elements[0] = _elements[_size - 1];
                _size--;

                ReCalculateDown();

                return result;
            }

            public void Add(int element)
            {
                if (_size == _elements.Length)
                    throw new IndexOutOfRangeException();

                _elements[_size] = element;
                _size++;

                ReCalculateUp();
            }

            private void ReCalculateDown()
            {
                int index = 0;
                while (HasLeftChild(index))
                {
                    var smallerIndex = GetLeftChildIndex(index);
                    if (HasRightChild(index) && GetRightChild(index) < GetLeftChild(index))
                    {
                        smallerIndex = GetRightChildIndex(index);
                    }

                    if (_elements[smallerIndex] >= _elements[index])
                    {
                        break;
                    }

                    Swap(smallerIndex, index);
                    index = smallerIndex;
                }
            }

            private void ReCalculateUp()
            {
                var index = _size - 1;
                while (!IsRoot(index) && _elements[index] < GetParent(index))
                {
                    var parentIndex = GetParentIndex(index);
                    Swap(parentIndex, index);
                    index = parentIndex;
                }
            }

            public override string ToString()
            {
                return string.Join(", ", _elements);
            }
        }

        public static Transform FindDeepChild(this Transform parent, string name)
        {
            var result = parent.Find(name);
            if (result != null)
            {
                return result;
            }

            foreach (Transform child in parent)
            {
                result = child.FindDeepChild(name);
                if (result != null)
                {
                    return result;
                }
            }
            return null;
        }

        public static Type GetCollectionElement(this Type type)
        {
            if (type.IsArray)
            {
                return type.GetElementType();
            }
            if (type.IsGenericList())
            {
                return type.GetGenericArguments()[0];
            }
            return null;
        }

        public static bool IsCollectionType(this Type type) => (type.IsGenericList() || type.IsArray);

        public static bool IsGenericList(this Type type) => type.IsGenericType && (type.GetGenericTypeDefinition() == typeof(List<>));

        public static bool IsNullable(this Type type) => Nullable.GetUnderlyingType(type) != null;

        public static object TypeDefaultValue(this Type type)
        {
            if (type.IsValueType)
                return Activator.CreateInstance(type);

            return null;
        }


        public static float Cross(Vector2 v1, Vector2 v2)
        {
            return v1.x * v2.y - v1.y * v2.x;
        }

        public static float GetCurveLength(List<Vector2> lineSegments)
        {
            if (lineSegments.Count < 2)
            {
                return 0;
            }
            float totalLength = 0;
            for (int i = 0; i < lineSegments.Count - 1; i++)
            {
                totalLength += (lineSegments[i] - lineSegments[i + 1]).magnitude;
            }
            return totalLength;
        }
    }

    public static class StringBuilderExtension
    {
        public static string Substring(this StringBuilder sb, int startIndex, int length)
        {
            return sb.ToString(startIndex, length);
        }

        public static StringBuilder Remove(this StringBuilder sb, char ch)
        {
            for (int i = 0; i < sb.Length;)
            {
                if (sb[i] == ch)
                    sb.Remove(i, 1);
                else
                    i++;
            }
            return sb;
        }

        public static StringBuilder RemoveFromEnd(this StringBuilder sb, int num)
        {
            return sb.Remove(sb.Length - num, num);
        }

        public static void Clear(this StringBuilder sb)
        {
            sb.Length = 0;
        }

        /// <summary>
        /// Trim left spaces of string
        /// </summary>
        /// <param name="sb"></param>
        /// <returns></returns>
        public static StringBuilder TrimLeft(this StringBuilder sb)
        {
            if (sb.Length != 0)
            {
                int length = 0;
                int num2 = sb.Length;
                while ((sb[length] == ' ') && (length < num2))
                {
                    length++;
                }
                if (length > 0)
                {
                    sb.Remove(0, length);
                }
            }
            return sb;
        }

        /// <summary>
        /// Trim right spaces of string
        /// </summary>
        /// <param name="sb"></param>
        /// <returns></returns>
        public static StringBuilder TrimRight(this StringBuilder sb)
        {
            if (sb.Length != 0)
            {
                int length = sb.Length;
                int num2 = length - 1;
                while ((sb[num2] == ' ') && (num2 > -1))
                {
                    num2--;
                }
                if (num2 < (length - 1))
                {
                    sb.Remove(num2 + 1, (length - num2) - 1);
                }
            }
            return sb;
        }

        /// <summary>
        /// Trim spaces around string
        /// </summary>
        /// <param name="sb"></param>
        /// <returns></returns>
        public static StringBuilder Trim(this StringBuilder sb)
        {
            if (sb.Length != 0)
            {
                int length = 0;
                int num2 = sb.Length;
                while ((sb[length] == ' ') && (length < num2))
                {
                    length++;
                }
                if (length > 0)
                {
                    sb.Remove(0, length);
                    num2 = sb.Length;
                }
                length = num2 - 1;
                while ((sb[length] == ' ') && (length > -1))
                {
                    length--;
                }
                if (length < (num2 - 1))
                {
                    sb.Remove(length + 1, (num2 - length) - 1);
                }
            }
            return sb;
        }

        /// <summary>
        /// Get index of a char
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="c"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, char value)
        {
            return IndexOf(sb, value, 0);
        }

        /// <summary>
        /// Get index of a char starting from a given index
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="c"></param>
        /// <param name="startIndex"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, char value, int startIndex)
        {
            for (int i = startIndex; i < sb.Length; i++)
            {
                if (sb[i] == value)
                {
                    return i;
                }
            }
            return -1;
        }

        /// <summary>
        /// Get index of a string
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="text"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, string value)
        {
            return IndexOf(sb, value, 0, false);
        }

        /// <summary>
        /// Get index of a string from a given index
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="text"></param>
        /// <param name="startIndex"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, string value, int startIndex)
        {
            return IndexOf(sb, value, startIndex, false);
        }

        /// <summary>
        /// Get index of a string with case option
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="text"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, string value, bool ignoreCase)
        {
            return IndexOf(sb, value, 0, ignoreCase);
        }

        /// <summary>
        /// Get index of a string from a given index with case option
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="text"></param>
        /// <param name="startIndex"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public static int IndexOf(this StringBuilder sb, string value, int startIndex, bool ignoreCase)
        {
            int num3;
            int length = value.Length;
            int num2 = (sb.Length - length) + 1;
            if (ignoreCase == false)
            {
                for (int i = startIndex; i < num2; i++)
                {
                    if (sb[i] == value[0])
                    {
                        num3 = 1;
                        while ((num3 < length) && (sb[i + num3] == value[num3]))
                        {
                            num3++;
                        }
                        if (num3 == length)
                        {
                            return i;
                        }
                    }
                }
            }
            else
            {
                for (int j = startIndex; j < num2; j++)
                {
                    if (char.ToLower(sb[j]) == char.ToLower(value[0]))
                    {
                        num3 = 1;
                        while ((num3 < length) && (char.ToLower(sb[j + num3]) == char.ToLower(value[num3])))
                        {
                            num3++;
                        }
                        if (num3 == length)
                        {
                            return j;
                        }
                    }
                }
            }
            return -1;
        }

        /// <summary>
        /// Determine whether a string starts with a given text
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool StartsWith(this StringBuilder sb, string value)
        {
            return StartsWith(sb, value, 0, false);
        }

        /// <summary>
        /// Determine whether a string starts with a given text (with case option)
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="value"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public static bool StartsWith(this StringBuilder sb, string value, bool ignoreCase)
        {
            return StartsWith(sb, value, 0, ignoreCase);
        }

        /// <summary>
        /// Determine whether a string is begin with a given text
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="value"></param>
        /// <param name="startIndex"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public static bool StartsWith(this StringBuilder sb, string value, int startIndex, bool ignoreCase)
        {
            int length = value.Length;
            int num2 = startIndex + length;
            if (ignoreCase == false)
            {
                for (int i = startIndex; i < num2; i++)
                {
                    if (sb[i] != value[i - startIndex])
                    {
                        return false;
                    }
                }
            }
            else
            {
                for (int j = startIndex; j < num2; j++)
                {
                    if (char.ToLower(sb[j]) != char.ToLower(value[j - startIndex]))
                    {
                        return false;
                    }
                }
            }
            return true;
        }

        /// <summary>
        /// Determine whether a string is begin with a given text
        /// </summary>
        /// <param name="sb"></param>
        /// <param name="value"></param>
        /// <param name="startIndex"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public static bool EndsWith(this StringBuilder sb, char value, bool ignoreSpace)
        {
            if (ignoreSpace)
            {
                for (int i = sb.Length - 1; i >= 0; i--)
                {
                    if (sb[i] == ' ')
                    {
                        continue;
                    }
                    if (sb[i] == value)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            else
            {
                if (sb[sb.Length - 1] == value)
                {
                    return true;
                }
            }
            return false;
        }
    }

    public static class ColorUtils
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        public static Color ColorFromU8(byte r, byte g, byte b)
        {
            float rf = r / 255.0f;
            float gf = g / 255.0f;
            float bf = b / 255.0f;

            return new Color(rf, gf, bf);
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        public static Color ColorFromU8(byte r, byte g, byte b, byte a)
        {
            Color res = ColorFromU8(r, g, b);
            res.a = a / 255.0f;

            return res;
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        public static bool AreColorsEqual(Color a, Color b)
        {
            return Mathf.Approximately(a.r, b.r)
                && Mathf.Approximately(a.g, b.g)
                && Mathf.Approximately(a.b, b.b);
        }
    }

    public static class JsonHelper
    {
        public static T[] FromJson<T>(string json)
        {
            Wrapper<T> wrapper = JsonUtility.FromJson<Wrapper<T>>(json);
            return wrapper.Items;
        }

        public static string ToJson<T>(T[] array)
        {
            Wrapper<T> wrapper = new Wrapper<T>();
            wrapper.Items = array;
            return JsonUtility.ToJson(wrapper);
        }

        public static string ToJson<T>(T[] array, bool prettyPrint)
        {
            Wrapper<T> wrapper = new Wrapper<T>();
            wrapper.Items = array;
            return JsonUtility.ToJson(wrapper, prettyPrint);
        }

        [Serializable]
        private class Wrapper<T>
        {
            public T[] Items;
        }
    }
}