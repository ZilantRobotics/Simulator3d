using Assets.Scripts.Agent.UI;

namespace Assets.Scripts.Agent
{
    public class AgentViewsBinder
    {
        public AgentViewsBinder(IAgentGameObject gameObject, 
            IAgentTweakingUI agentTweakingUI, 
            ICameraPreview cameraPreview)
        {
            gameObject.Transform?.GetComponent<UserInterfaceTweakables>()?.SetDependencies(agentTweakingUI, cameraPreview);
        }
    }
}
 