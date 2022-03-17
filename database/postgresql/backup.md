# Backup

## Dump

[pg_dump](https://www.postgresql.org/docs/current/app-pgdump.html)

Output

- Script dumps
  - plain-text files containing the SQL commands
  - To restore from such a script, feed it to psql.
- Archive file formats
  - must be used with pg_restore to rebuild the database

```
// db-backup.sh
#!/bin/sh
docker-compose exec db pg_dump -U yes -d pangolin >./db/backup/db-backup-$(date +%Y%m%d%H%M%S).sql
```

## Restore

```
// db-restore.sh
cat db-backup.sql | docker-compose exec db psql -U yes -d pangolin
```

```
dropdb -U $USER $DB
createdb -U $USER $DB
aws s3 cp $s3_bucket/db-backup/$FILE_NAME $file_path
cat $file_path$FILE_NAME | psql -U $USER -d $DB
```
