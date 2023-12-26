using System.Collections.Generic;
using System.IO;
using Assets.Scripts.Agent.Sensors;

namespace Assets.Scripts.Agent.UI
{
    public class SensorsCameraPreviewInitializer
    {
        public SensorsCameraPreviewInitializer(
            ISensors sensors,
            ICameraPreview ui)
        {
            var sensorToPreview = new Dictionary<Sensor, RenderTextureDisplayer>();
            var epoch = new System.DateTime(1970, 1, 1, 0, 0, 0, System.DateTimeKind.Utc);
            const string path = "CapturedFrames/";

            foreach (var sensorWithCamera in sensors.SensorsWithCameraList)
            {
                var preview = ui.AddCamera(sensorWithCamera.Sensor.Settings.Name, 
                    sensorWithCamera.Sensor.Settings.Name, sensorWithCamera.Camera);
                preview.gameObject.SetActive(sensorWithCamera.Sensor.IsActive.Value);
                sensorWithCamera.Sensor.IsActive.Change += (sender, isActive) => 
                preview.gameObject.SetActive(isActive);
                sensorToPreview.Add(sensorWithCamera.Sensor, preview);
            }

            foreach (var videoSensor in sensors.VideoSensorsList)
            {
                var preview = sensorToPreview[videoSensor.Sensor];
                preview.gameObject.SetActive(videoSensor.Sensor.IsActive.Value);
    
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);

                preview.gameObject.GetComponentInChildren<UnityEngine.UI.Button>().onClick.AddListener(() =>
                {
                    videoSensor.Save(Path.Combine(path, videoSensor.Sensor.Settings.Name + "_" + 
                        (System.DateTime.UtcNow - epoch).TotalSeconds.ToString(System.Globalization.CultureInfo.InvariantCulture)), 100);
                });                
            }
        }
    }
}
