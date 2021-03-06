# Docker

- [CLI](https://docs.docker.com/engine/reference/commandline)

# [Dockerfile](https://docs.docker.com/engine/reference/builder/)

- [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir): The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.
- [VOLUME](https://docs.docker.com/engine/reference/builder/#volume):
- [EXPOSE](https://docs.docker.com/engine/reference/builder/#expose): The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime.

Node.js API server

```
// Dockerfile
FROM node:latest
WORKDIR /src
COPY . /src
RUN npm i
EXPOSE 3000
RUN npm i -g nodemon
CMD ["nodemon", "src/index.js"]
```

Nginx

```
// Dockerfile
FROM nginx:1.11-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
```

React SPA

```
FROM node:latest
```

# Run

[docker run](https://docs.docker.com/engine/reference/run/)

```
docker run -d -p 80:80 -v $(pwd)/src:/app/src --name container-name image-name:latest
```

- [-d](https://docs.docker.com/engine/reference/run/#detached--d):
- [--publish, -p](https://docs.docker.com/engine/reference/run/#expose-incoming-ports)
  - Publish a container's port or a range of ports to the host
  - format: ip:hostPort:containerPort | ip::containerPort | hostPort:containerPort | containerPort
- -v:

start a container with redis image and run in the background(`-d`)

`docker run -d redis`

# Debug

```
docker exec -it container-name bash
```

```
docker inspect
```

```
docker logs container-name -f
```

# Deploy

Node + Postgresql + React

How to watch?
https://blog.bam.tech/developper-news/dockerize-your-app-and-keep-hot-reloading
https://docs.docker.com/compose/compose-file/#service-configuration-reference

#

[docker attach](https://docs.docker.com/engine/reference/commandline/attach/)

```

docker attach 3b65488ae593

```

[How to get bash or ssh into a running container in background mode?](https://askubuntu.com/questions/505506/how-to-get-bash-or-ssh-into-a-running-container-in-background-mode)

```

sudo docker exec -i -t 665b4a1e17b6 /bin/bash

```

or

```

sudo docker exec -i -t loving_heisenberg /bin/bash

```

# Copy file from container to host

https://stackoverflow.com/questions/22049212/copying-files-from-docker-container-to-host

```
docker cp <containerId>:/file/path/within/container /host/path/target
```

## Better docker ps

```
$ docker ps --format "table {{.Names}}\t{{.Status}}"
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}"'
```

list all running containers / inspect and logs container

```
docker ps
docker ps --format '{{.Image}}'
```

`docker inspect <friendly-name|container-id>`

`docker logs <friendly-name|container-id>`

### existing images can be found at registry.hub.docker.com

`docker search redis`

## Access host ip

- mac

https://docs.docker.com/docker-for-mac/networking/

`docker.for.mac.localhost`

I WANT TO CONNECT FROM A CONTAINER TO A SERVICE ON THE HOST

The host has a changing IP address (or none if you have no network access). From 18.03 onwards our recommendation is to connect to the special DNS name `host.docker.internal`, which resolves to the internal IP address used by the host. This is for development purpose and will not work in a production environment outside of Docker Desktop for Mac.

The gateway is also reachable as `gateway.docker.internal`.

- linux

`host.docker.internal`

## Access other container?

yes-web <-> yes-rendertron
