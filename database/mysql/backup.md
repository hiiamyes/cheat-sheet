# Backup

## Dump

https://stackoverflow.com/questions/40024280/mysqldump-via-ssh-to-local-computer

```
ssh root@{ip} "mysqldump -u dbuser -p {dbname} | gzip -9" > dblocal.sql.gz
```

## Restore

```
mysql -p -u root amz-development < dblocal.sql.gz
```
