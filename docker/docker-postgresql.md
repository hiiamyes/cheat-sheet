[Dockerize PostgreSQL](https://docs.docker.com/engine/examples/postgresql_service/)
[library/postgres - Docker Hub](https://hub.docker.com/_/postgres/)

## image

`$ docker pull postgres`

`$ docker run --name yes-postgres -e POSTGRES_PASSWORD=yes -d postgres`

`$ docker run -it --rm --link yes-postgres:postgres postgres psql -h postgres -U postgres`

`--interactive, -i`: Keep STDIN open even if not attached.

`--tty, -t`: Allocate a pseudo-TTY.

`-it`: Allocate pseudo-TTY. The -it instructs Docker to allocate a pseudo-TTY connected to the container’s stdin.

`--rm`: Automatically remove the container when it exits.

`--link`: Add link to another container.

## use on Mac

## use on linode
