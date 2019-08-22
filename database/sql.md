```
DROP DATABASE db-name;

// ERROR:  cannot drop the currently open database

```

# Upsert

```
insert into stations (station_id, name)
values (
    $1,
    $2
)
on conflict (station_id)
do
update set name = $1;
```
