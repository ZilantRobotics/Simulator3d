using Assets.Scripts.Com;

namespace Assets.Scripts.Agent.Sensors
{
    public interface IVisualizableSensor
    {
        public Sensor Sensor { get; }

        public Variable<bool> IsVisualized { get; }
    }
}
