# Docker Compose

- [CLI](https://docs.docker.com/compose/reference/overview/)
- [Docker Compose File](https://docs.docker.com/compose/compose-file/)

## CLI

```
docker-compose up
```

## Docker Compose File

```
version: "3"
services:
  api:
    build: ./api
    image: api
    ports:
      - "4000:80"
  postgres:
    image: postgres:9.6.11-alpine
    environment:
      POSTGRES_PASSWORD: postgres

```

# CI/CD
https://stackoverflow.com/questions/42302632/docker-compose-continuous-deployment-setup
