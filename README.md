## Deepstream 6.0.1
### Build

```
DOCKER_BUILDKIT=1 docker build -t hiennguyen9874/deepstream:deepstream_6.0.1-devel \
    --build-arg BASE_CONTAINER=nvcr.io/nvidia/deepstream:6.0.1-devel \
    --build-arg DISTRO=ubuntu1804\
    --build-arg ARCH=x86_64 .
```

### Push

```
docker push hiennguyen9874/deepstream:deepstream_6.0.1-devel
```

## Deepstream 6.1.1
### Build
```
DOCKER_BUILDKIT=1 docker build -t hiennguyen9874/deepstream:deepstream_6.1.1-devel \
    --build-arg BASE_CONTAINER=nvcr.io/nvidia/deepstream:6.1.1-devel \
    --build-arg DISTRO=ubuntu2004 \
    --build-arg ARCH=x86_64 .
```

### Push

```
docker push hiennguyen9874/deepstream:deepstream_6.1.1-devel
```

## TODO
- Pycuda
- Python deepstream
