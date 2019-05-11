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

## Build

[docker build](https://docs.docker.com/engine/reference/commandline/build/): Build an image from a Dockerfile

```
docker build -t api-server:v1 .
```

- --tag, -t: Name and optionally a tag in the ‘name:tag’ format

# Run

[docker run](https://docs.docker.com/engine/reference/run/)

```
docker run -d -p 80:80 yes:v1
```

- -d: https://docs.docker.com/engine/reference/run/#detached--d
- [-p](https://docs.docker.com/engine/reference/run/#expose-incoming-ports): Publish a container's port or a range of ports to the host

# Debug

``
docker run -it bash?
```

```
docker inspect
```

```
docker logs practice-02 -f
```

# Deploy

Node + Postgresql + React

How to watch?
https://blog.bam.tech/developper-news/dockerize-your-app-and-keep-hot-reloading
https://docs.docker.com/compose/compose-file/#service-configuration-reference

```

```

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
