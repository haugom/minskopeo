# skopeo in container

After I have statically build the skopeo binary following they're instructions, I put it in a container to use it in build pipelines using containers as build tools.

## build

`docker build -t haugom/skopeocontainer:<tag> .`

or

`./build.sh <tag>`
