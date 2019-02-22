docker-kernel-builder
=====================

build android kernel on docker

```
docker build -t kernel-builder .
```

```
docker run -it -v /Volumes/LinuxVolume:/opt/src kernel-builder /bin/bash
docker exec -it container_id /bin/bash
```
