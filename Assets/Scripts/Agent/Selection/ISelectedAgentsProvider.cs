namespace Assets.Scripts.Agent.Selection
{
    public interface ISelectedAgentsProvider
    {
        public int[] GetSelectedAgentIndices();

        public int[] GetSelectedSpawnIndex();
    }
}
