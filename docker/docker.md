# Docker

- [CLI](https://docs.docker.com/engine/reference/commandline)
- [Dockerfile](https://docs.docker.com/engine/reference/builder/)

## CLI

```
docker build .
```

## Dockerfile

```
FROM node:latest
WORKDIR /app
COPY . /app
RUN npm i
EXPOSE 3000
CMD ["npm start"]
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
