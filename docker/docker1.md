### existing images can be found at registry.hub.docker.com

`docker search redis`

### start a container with redis image and run in the background(`-d`)

`docker run -d redis`

### list all running containers / inspect and logs container

`docker ps`

`docker inspect <friendly-name|container-id>`

`docker logs <friendly-name|container-id>`

### running Redis in the background, with a name of redisHostPort on port 6379

* ports are bound by -p <host-port>:<container-port>

```
docker run -d --name redisHostPort -p 6379:6379 redis:latest
```

### using the option -p 6379 to expose Redis on a randomly available port

```
docker run -d --name redisDynamic -p 6379 redis:latest
docker port redisDynamic 6379
```

```
Containers are designed to be stateless.
Binding directories (volumes) is done using the option -v <host-dir>:<container-dir>.
docker run -d --name redisMapped -v /opt/docker/data/redis:/data redis
```

## Deploy Static HTML Website as Container

Dockerfile

```
// defines our base image
FROM nginx:alpine

// copies the content of the current directory into a particular location inside the container.
COPY . /usr/share/nginx/html  
```

build image

`docker build` or `docker build -t webserver-image:v1 .`

list of all the images on the host

`docker images`

`docker run -d -p 80:80 webserver-image:v1`

`curl docker`

## Building Container Images

```
// Dockerfile
FROM nginx:1.11-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
```

```
docker build -t yes:v1 .
docker run -d -p 80:80 yes:v1
```

##

If you wish to keep the intermediate containers after the build is complete, you must use --rm=false. This does not affect the build cache.

show stopped containers

```
docker ps --filter "status=exited"
```

remove all stopped containers

```
docker container prune
```

remove all none docker images

```
docker rmi $(docker images -f "dangling=true" -q)
```

##

```
docker system prune
```

```
WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache
```

## docker compose

```
web:
  build: .
  ports:
    - "3001"
  links:
    - redis
redis:
  image: redis:alpine
  volumes:
    - /var/redis/data:/data
```

`docker-compose up -d`
`docker-compose stop`
`docker-compose rm`