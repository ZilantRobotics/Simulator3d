namespace Assets.Scripts.TargetEnvironmentSelection
{
    public class SavedTargetEnvironmentProvider : ITargetEnvironmentProvider
    {
        public TargetEnvironment TargetEnvironment { get; }

        public SavedTargetEnvironmentProvider()
        {
            TargetEnvironment = TargetEnvironment.ROS;
        }
    }
}
