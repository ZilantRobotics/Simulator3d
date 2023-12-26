using System;

namespace Ros
{
    [AttributeUsage(AttributeTargets.Struct)]
    class MessageTypeAttribute : Attribute
    {
        public string Type { get; private set; }
        public string Type2 { get; private set; }

        public MessageTypeAttribute(string type)
        {
            Type = Type2 = type;
        }

        public MessageTypeAttribute(string type, string type2)
        {
            Type = type;
            Type2 = type2;
        }
    }
}

namespace Apollo
{
    [System.AttributeUsage(AttributeTargets.Field | AttributeTargets.Class)] //Should not be used on value type
    public class RequiredAttribute : Attribute { }
}


