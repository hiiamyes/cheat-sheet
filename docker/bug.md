2019-08-24

database not created

solution

- https://github.com/docker-library/postgres/issues/203#issuecomment-255200501

ref

- https://github.com/docker/docker-snap/issues/31

```
incorrect one
/home/yes/snap/docker/384/postgresql/paaaack/data
        "Mounts": [
            {
                "Type": "bind",
                "Source": "/home/yes/snap/docker/384/postgresql/paaaack/data",
                "Destination": "/var/lib/postgresql/data",
                "Mode": "rw",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],
```

```
correct one
"HostConfig": {
    "Binds": [
        "/home/yes/postgresql/data/hiking-plan:/var/lib/postgresql/data"
],
     "Mounts": [
            {
                "Type": "bind",
                "Source": "/home/yes/postgresql/data/hiking-plan",
                "Destination": "/var/lib/postgresql/data",
                "Mode": "",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],
```
