- [Dockerize PostgreSQL](https://docs.docker.com/engine/examples/postgresql_service/)
- [library/postgres - Docker Hub](https://hub.docker.com/_/postgres/)
- [docker run](https://docs.docker.com/v17.12/edge/engine/reference/commandline/run/#usage)

# image

```
docker run --name db-test -e POSTGRES_PASSWORD=test -e POSTGRES_DB=test -e POSTGRES_USER=test -d postgres:11
docker exec -it db-test bash
psql -U test
```

```
docker run -it --rm --link yes-postgres:postgres postgres psql -h postgres -U postgres
```

`--env , -e`: Set environment variables

`--interactive, -i`: Keep STDIN open even if not attached.

`--tty, -t`: Allocate a pseudo-TTY.

`-it`: Allocate pseudo-TTY. The -it instructs Docker to allocate a pseudo-TTY connected to the container’s stdin.

`--rm`: Automatically remove the container when it exits.

`--link`: Add link to another container.

# Backup

```
sudo docker exec -i -t 665b4a1e17b6 /bin/bash
```

# use on Mac

# use on linode
