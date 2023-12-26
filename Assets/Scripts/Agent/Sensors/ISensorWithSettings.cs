namespace Assets.Scripts.Agent.Sensors
{
    public interface ISensorWithSettings<T> where T : ISensorSettings
    {
        public Sensor Sensor { get; }

        public T Settings { get; }
    }
}
