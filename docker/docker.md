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
