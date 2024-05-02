# Docker buildx cheat-sheet

1. Create builder

You might want to create a builder different from the default one for some reasons, such as building images for diffrent platforms or using a different driver.

```bash
# Create a new builder instance named mybuilder without any output specified
docker buildx create --name mybuilder --driver docker-container --use
```

This will create a new builder instance named `mybuilder` and set it as the active builder.
The driver `docker-container` is the default driver for buildx and is used to create a builder instance as a container.

2. Build images

```bash
# Build image for linux/amd64 platform, tag and export it to the local docker daemon
docker buildx build --platform linux/amd64 -t myimage:amd64-x.y.z . --load
# Export previous image to a tarball
docker buildx build --platform linux/amd64 -t myimage:amd64-x.y.z . --output type=local,dest=myimage.tar
# Build image for linux/amd64 and linux/arm64 platforms, tag it and save it to a tarball
docker buildx build --platform linux/arm64,linux/amd64 -t athena:amd64-x.y.z --target athena_prod --output type=oci,dest=./athena.tar .
```





