#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

CONTAINER="named_volume_test_container"
IMAGE="named_volume_test_image"

docker stop ${CONTAINER}
docker rm ${CONTAINER}
docker build -t ${IMAGE} .

# The command below will create a directory named "dir_on_host" on the host:
# /var/lib/docker/volumes/dir_on_host/
# It will be mapped to a directory in the container:
# /dir_in_container
docker run -it --name ${CONTAINER} -v dir_on_host:/dir_in_container ${IMAGE} bash ./entrypoint.sh


