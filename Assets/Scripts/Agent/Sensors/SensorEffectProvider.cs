namespace Assets.Scripts.Agent.Sensors
{
    public class SensorEffectProvider : ISensorEffectProvider
    {
        public bool IsSensorEffect { get; set; }

        public SensorEffectProvider()
        {
            IsSensorEffect = false;
        }
    }
}
