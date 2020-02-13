# Volume

https://kubernetes.io/docs/concepts/storage/volumes/

First, when a Container crashes, kubelet will restart it, but the files will be lost - the Container starts with a clean state.

Second, when running Containers together in a Pod it is often necessary to share files between those Containers.

Docker also has a concept of volumes, though it is somewhat looser and less managed.

## Hot reload . From docker volume to k8s volume

https://kubernetes.io/docs/concepts/storage/volumes/#local

docker

```
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

```
services:
  api:
    build: ./services/api
    volumes:
      - ./services/api/src:/app/src
```

k8s local volume

```

```
