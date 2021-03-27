#!/bin/bash

# Be sure to change the image names

docker build -t matsuura .
docker run -d \
    -p 8080:8080 \
    --name "matsuura" \
    -v "${PWD}:/workspace" \
    --env AUTHENTICATE_VIA_JUPYTER="mytoken" \
    --shm-size 512m \
    --restart always \
    matsuura
