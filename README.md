docker-kernel-builder
=====================

build android kernel on docker

```
docker build -t kernel-builder:v1 .
```

```
docker run -it -v /Volumes/LinuxVolume:/opt/src kernel-builder:v1 /bin/bash
docker exec -it container_id /bin/bash
```
