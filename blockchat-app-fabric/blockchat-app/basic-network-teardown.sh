#!/bin/bash

(cd ../basic-network; ./stop.sh; ./teardown.sh)

echo
echo "FORCING the clean up of all images ..."
docker rm $(docker stop $(docker ps -aq))
docker rmi -f $(docker images | grep "dev"- | cut -f 1 -d ' ' -)
rm -rf ~/.hfc-key-store /tmp/hfc/

