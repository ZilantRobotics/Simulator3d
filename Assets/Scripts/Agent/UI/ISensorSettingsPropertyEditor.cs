namespace Assets.Scripts.Agent.UI
{
    public interface ISensorSettingsPropertyEditor<out T>
    {
        public bool IsActive { get; set; }

        public T Value { get; }

        public void Update();
    }
}
