using System;
using System.Globalization;
using System.IO;
using UnityEngine;
using YamlDotNet.Core;
using YamlDotNet.Core.Events;
using YamlDotNet.Serialization;

namespace Assets.Scripts.Agent.Configuration.Converters
{
    public sealed class QuaternionConverter : IYamlTypeConverter
    {
        private static readonly Type _mappingStartType = typeof(MappingStart);
        private static readonly Type _mappingEndType = typeof(MappingEnd);
        public bool Accepts(Type type) => type == typeof(Quaternion);

        public object ReadYaml(IParser parser, Type type)
        {
            if (parser.Current.GetType() != _mappingStartType) // You could also use parser.Accept<MappingStart>()
            {
                throw new InvalidDataException("Invalid YAML content.");
            }

            parser.MoveNext(); // move on from the map start

            var result = new Quaternion();

            do
            {
                var name = parser.Current as Scalar;
                parser.MoveNext();
                var value = parser.Current as Scalar;
                switch (name.Value)
                {
                    case "X":
                        result.x = float.Parse(value.Value, CultureInfo.InvariantCulture);
                        break;
                    case "Y":
                        result.y = float.Parse(value.Value, CultureInfo.InvariantCulture);
                        break;
                    case "Z":
                        result.z = float.Parse(value.Value, CultureInfo.InvariantCulture);
                        break;
                    case "W":
                        result.w = float.Parse(value.Value, CultureInfo.InvariantCulture);
                        break;
                    default:
                        throw new InvalidDataException("Unexpected scalar value '" + name.Value + "'.");
                }
                parser.MoveNext();
            } while (parser.Current.GetType() != _mappingEndType);

            parser.MoveNext(); // skip the mapping end (or crash)

            return result;
        }

        public void WriteYaml(IEmitter emitter, object value, Type type)
        {
            var node = (Quaternion)value;
            emitter.Emit(new MappingStart(null, null, false, MappingStyle.Block));
            emitter.Emit(new Scalar(null, "X"));
            emitter.Emit(new Scalar(null, node.x.ToString(CultureInfo.InvariantCulture)));
            emitter.Emit(new Scalar(null, "Y"));
            emitter.Emit(new Scalar(null, node.y.ToString(CultureInfo.InvariantCulture)));
            emitter.Emit(new Scalar(null, "Z"));
            emitter.Emit(new Scalar(null, node.z.ToString(CultureInfo.InvariantCulture)));
            emitter.Emit(new Scalar(null, "W"));
            emitter.Emit(new Scalar(null, node.w.ToString(CultureInfo.InvariantCulture)));
            emitter.Emit(new MappingEnd());
        }
    }
}
