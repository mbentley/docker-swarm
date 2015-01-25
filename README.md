mbentley/swarm
==============

docker image for swarm

To build this image:

1. Build `swarm` using the `build_swarm` script.  This will use the `golang:latest` docker image to perform the build and the resulting binary will be `bin/swarm`.

2. Build the docker image: `docker build --rm -t mbentley/swarm .`

To pull this image:
`docker pull mbentley/swarm`

Example usage:
`docker run -itd --restart=always -p 4243:4243 --name swarmd mbentley/swarm manage -H tcp://0.0.0.0:4243 token://<cluster_id>`

Swarm documentation:  https://github.com/docker/swarm

Note: The purpose of using this over the Dockerfile in the swarm repo is to end up with as small of a docker image as possible.  The resulting image is about 400 MB smaller due to not using the `golang:onbuild` image.
