# CLI

https://github.com/aws/aws-cli/

```
aws [options] <command> <subcommand> [parameters]
```

```
aws --profile pangolin s3 mb s3://new-bucket
```

- --profile

# Installation

```
brew install aws
aws configure
```

# Credential

```
cat ~/.aws/credentials
```

In credentials, there are multiple profiles.

```
[default]
aws_access_key_id = key-id
aws_secret_access_key = key

[profile-yes]
aws_access_key_id = key-id
aws_secret_access_key = key
```

# Config

```
cat ~/.aws/config
```

In config, there are multiple profiles.

```
[default]
output = json

[profile-yes]
output = json
```

# Profile
