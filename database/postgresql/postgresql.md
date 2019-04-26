# Postgresql

## Mac

### Install

### Stop / Start / Restart
Run this command to manually start the server:
`pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`


Start manually:

`pg_ctl -D /usr/local/var/postgres start`

Stop manually:

`pg_ctl -D /usr/local/var/postgres stop` or `brew services stop postgresql`

### Check the listen_addresses and port in postgresql.conf:

`egrep 'listen|port' /usr/local/var/postgres/postgresql.conf`

```
#listen_addresses = 'localhost'         # what IP address(es) to listen on;
#port = 5432                            # (change requires restart)
                                        # supported by the operating system:
                                        # supported by the operating system:
                                        #   %r = remote host and port
```

### Bug

- DB can't be connectted after Mac restart

```
psql: could not connect to server: No such file or directory
Is the server running locally and accepting
connections on Unix domain socket "/tmp/.s.PGSQL.5432"?
```

[The problem can also be attributed to a crashed process that left postmaster.pid file behind.](https://dba.stackexchange.com/a/171580)

```
$ brew services stop postgresql
$ rm /usr/local/var/postgres/postmaster.pid # adjust path accordingly to your install
$ brew services start postgresql
```

# Backup


# Migration
- [db-migrate](https://github.com/db-migrate/node-db-migrate)
- [node-pg-migrate](https://github.com/salsita/node-pg-migrate)
- [sqitch](https://github.com/sqitchers/sqitch)
