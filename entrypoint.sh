#!/bin/bash
cd /home/container

java -version

echo "Java version has been correctly checked"

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}