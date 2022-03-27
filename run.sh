#!/bin/bash

docker run -it --network mongonet --rm --name mongo \
	-v $(pwd)/db:/data/db/ \
	-w /data/db \
	mongo:latest bash -c "mongod > /dev/null 2>&1 & sleep .5 && bash"
