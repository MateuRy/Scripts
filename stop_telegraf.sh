#!/bin/bash
for i in {1..1}
do
	docker kill $(docker ps -a -q  --filter ancestor=telegraf)  
	sleep 3	
        docker container rm $(docker ps -a -q  --filter ancestor=telegraf)
done


