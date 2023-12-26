using System.Collections.Generic;
using UnityEngine;
using static Assets.Scripts.Util.ColorUtils;
using SegType = PerceptionManager.SegmentationTypes;

namespace Assets.Scripts.Agent.Sensors.GroundTruth3DSensor
{
    public class DetectionEntity : MonoBehaviour
    {
        [Header("Segmentation")]
        public SegType SegmentationType;

        private static Dictionary<SegType, Color> _segTypeToColor;

        static DetectionEntity()
        {
            _segTypeToColor = new Dictionary<SegType, Color>
            { 
                { SegType.Car, ColorFromU8(0, 0, 142) },
                { SegType.Road, ColorFromU8(128, 64, 128) },
                { SegType.Sidewalk, ColorFromU8(244, 35, 232) },
                { SegType.Terrain, ColorFromU8(152, 251, 152) },
                { SegType.Vegetation, ColorFromU8(107, 142, 35) },
                { SegType.Obstacle, ColorFromU8(255, 255, 255) },
                { SegType.TrafficLight, ColorFromU8(250, 70, 30) },
                { SegType.Building, ColorFromU8(70, 70, 70) },
                { SegType.Sign, ColorFromU8(220, 220, 0) },
                { SegType.Pedestrian, ColorFromU8(220, 20, 60) },
                { SegType.CrossWalk, ColorFromU8(255, 165, 51) },
                { SegType.Bicycle, ColorFromU8(119, 11, 32) },
                { SegType.Rider, ColorFromU8(255, 0, 0) },
                { SegType.Fence, ColorFromU8(190, 153, 153) },
                { SegType.Pole, ColorFromU8(153, 153, 153) },
                { SegType.Truck, ColorFromU8(0, 0, 70) },
                { SegType.Bus, ColorFromU8(0, 60, 100) },
                { SegType.RoadMarkings, ColorFromU8(254, 255, 115) },
                { SegType.Animal, ColorFromU8(214, 132, 15) },
                { SegType.LandingPlatform, ColorFromU8(55, 170, 152) },
                { SegType.Stroller, ColorFromU8(218, 227, 123) },
            };
        }

        private void Start()
        {
            var renderers = GetComponentsInChildren<Renderer>(includeInactive: true);
            var segColorPropertyId = Shader.PropertyToID("_SegmentColor");

            MaterialPropertyBlock propertyBlock = new();
            propertyBlock.SetColor(segColorPropertyId, _segTypeToColor[SegmentationType]);

            foreach (var renderer in renderers)
            {
                for (var i = 0; i < renderer.sharedMaterials.Length; i++)
                {
                    var mat = renderer.sharedMaterials[i];
                    if (mat == null)
                    {
                        continue;
                    }
                    
                    if (mat.HasProperty(segColorPropertyId) &&
                        !AreColorsEqual(mat.GetColor(segColorPropertyId), _segTypeToColor[SegmentationType]))
                    {
                        mat = renderer.materials[i];
                    }

                    mat.SetOverrideTag("SegmentationType", "Standard");
                }

                renderer.SetPropertyBlock(propertyBlock);
            }
        }
    }
}