#
#	Script for killing and removing multiple containers by image name. 
#	Use: ./stop_containers <image Name>
#

#!/bin/bash

image=$1

for i in {1..1}
do
	docker kill $(docker ps -a -q  --filter ancestor="$image")  
	sleep 3	
        docker container rm $(docker ps -a -q  --filter ancestor="$image")
done


