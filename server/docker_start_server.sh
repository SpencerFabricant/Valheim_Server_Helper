#!/bin/sh
DOCKER_IMAGE=valheim_server
DOCKER_DATA_VOLUME=$(dirname $(pwd))/saves

set -e


if ! docker inspect "${DOCKER_IMAGE}" > /dev/null 2>&1
then
    docker build docker -t "${DOCKER_IMAGE}"
fi

docker run -it -d \
	-v "${DOCKER_DATA_VOLUME}:/root/.config/unity3d/IronGate/Valheim" \
	-v "$PWD:/irongate" \
	--name valheim_server \
	"${DOCKER_IMAGE}" \
	./start_server.sh
