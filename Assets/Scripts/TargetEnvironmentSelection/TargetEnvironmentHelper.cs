namespace Assets.Scripts.TargetEnvironmentSelection
{
    public static class TargetEnvironmentHelper
    {
        public static int GetRosVersion(TargetEnvironment targetEnvironment)
        {
            return targetEnvironment switch
            {
                TargetEnvironment.ROS => 1,
                _ => 1
            };
        }
    }
}
