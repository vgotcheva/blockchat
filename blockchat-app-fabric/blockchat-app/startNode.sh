#!/bin/bash
node ./registerAdmin.js
node ./registerUser.js

echo 
SERVERLOG=`pwd`/server.log
echo "Starting SERVER"
node ./server.js > $SERVERLOG 2>&1 &
echo "SERVER log is $SERVERLOG"

# Zinedine used this
#screen -S server -dm node server
