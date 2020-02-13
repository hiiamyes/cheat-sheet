# Volume

https://kubernetes.io/docs/concepts/storage/volumes/

First, when a Container crashes, kubelet will restart it, but the files will be lost - the Container starts with a clean state.

Second, when running Containers together in a Pod it is often necessary to share files between those Containers.

Docker also has a concept of volumes, though it is somewhat looser and less managed.

## Hot reload . From docker volume to k8s volume by hostPath type volumne

https://kubernetes.io/docs/concepts/storage/volumes/#hostpath

docker

```sh
docker run \
  -d \
  --name yes-db \
  --rm \
  -e POSTGRES_USER=yes \
  -e POSTGRES_PASSWORD=yes \
  -e POSTGRES_DB=yes \
  -p 5432:5432 \
  -h 0.0.0.0 \
  -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data \
  postgres:11
```

docker compose

```yml
services:
  api:
    build: ./services/api
    volumes:
      - ./services/api/src:/app/src
```

k8s hostPath volume

A hostPath volume mounts a file or directory from the host node’s filesystem into your Pod. This is not something that most Pods will need, but it offers a powerful escape hatch for some applications.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: test-pd
spec:
  containers:
  - image: k8s.gcr.io/test-webserver
    name: test-container
    volumeMounts:
    - mountPath: /test-pd
      name: test-volume
  volumes:
  - name: test-volume
    hostPath:
      # directory location on host
      path: /data
      # this field is optional
      type: Directory
```
