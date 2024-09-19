docker build \
--tag "azp-agent:linux" \
--file "./azp-agent-linux.dockerfile" .

docker run \
--interactive \
--tty \
-e AZP_URL="https://ORGHERE.visualstudio.com" \
-e AZP_TOKEN="PATHERE" \
-e AZP_POOL="POOLHERE" \
-e AZP_AGENT_NAME="Docker Agent - Linux" \
--name "azp-agent-linux" \
azp-agent:linux
