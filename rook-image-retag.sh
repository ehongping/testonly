#!/bin/bash

# docker pull
awk -F: '{print $1,$2}'  rook-image.txt|while read name tag ; do docker pull $name:$tag ;done
# docker tag
awk -F: '{print $1,$2}'  rook-image.txt|while read name tag ; do docker tag $name:$tag ehongping/${name##*/}:$t
g; done
# docker push 
docker images|awk '/ehongping/{print $1,$2}'|while read name tag; do docker push  $name:$tag; done
