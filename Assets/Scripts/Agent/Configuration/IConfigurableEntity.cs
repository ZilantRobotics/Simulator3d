namespace Assets.Scripts.Agent.Configuration
{
    public interface IConfigurableEntity<T>
    {
        public T Configuration { get; set; }
    }
}
