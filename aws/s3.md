# AWS S3

https://docs.aws.amazon.com/cli/latest/reference/s3/index.html#cli-aws-s3

```
aws s3 help
aws s3 ls
aws s3 ls s3://{bucket}

aws s3 mb s3://db-backup
aws s3 cp db-backup.sql s3://backup/b.sql
```

## sync

https://docs.aws.amazon.com/cli/latest/reference/s3/sync.html

```
aws s3 sync . s3://mybucket
```

## switch role

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-cli.html

```.aws/config
[profile prodaccess]
  role_arn = arn:aws:iam::123456789012:role/ProductionAccessRole
  source_profile = default
```

```
aws iam list-users --profile prodaccess
```
