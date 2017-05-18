#!/bin/sh
set -e
if [ -z "$1" ]; then
	echo "You need to pass the repository name to inspect as an argument"
	exit 1
fi

docker build -f Dockerfile.inspector --build-arg orig=$1 -t inspect-$1 . > /dev/null
docker run -it --rm inspect-$1
docker rmi inspect-$1 > /dev/null