# docker-devops-linux-agent
This docker image can be used to run a self-hosted Azure DevOps agent.

## Running
```sh
docker run \
  -e AZP_URL="https://dev.azure.com/<organization>" \
  -e AZP_TOKEN="<personal access token from Azure DevOps>" \
  -e AZP_POOL="<pool you have permissions to manage>" \
  dockeragent:latest
```

## info
This image was built from info available from [Azure DevOps documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux)