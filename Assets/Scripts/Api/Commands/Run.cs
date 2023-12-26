using GrpcApi;
using UnityEngine;

namespace Assets.Scripts.Api.Commands
{
    public class Run
    {
        public static RunResponse Execute(RunRequest request)
        {
            var timeLimit = request.TimeLimit;

            if (Mathf.Approximately(timeLimit, 0))
            {
                ApiManager.Instance.TimeLimit = 0;
                Time.timeScale = 1.0f;
                return new RunResponse();
            }

            ApiManager.Instance.TimeLimit = ApiManager.Instance.CurrentTime + timeLimit;
            return new RunResponse();
        }
    }
}
