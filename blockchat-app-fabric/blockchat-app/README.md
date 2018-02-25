## How to start blockchat App


./basic-network-stop.sh

./basic-network-teardown.sh

the check if everyting is cleaned with 
docker ps -a ; docker images

if not 
docker rm $(docker stop $(docker ps -aq))
and 
docker rmi -f $(docker images | grep "dev"- | cut -f 1 -d ' ' -)

then clean all the old keys
rm -rf ~/.hfc-key-store /tmp/hfc/

./basic-network-stop.sh

./basic-network-teardown.sh

./startFabric.sh

wait to get a prompt

node ./registerAdmin.js

node ./registerUser.js

screen -S server -dm node server

At this point, open the site in an web browser.
