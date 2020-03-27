# ECR

https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html
http://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth

```
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 516329534218.dkr.ecr.us-east-1.amazonaws.com/yesleeme_rendertron
```

```
An error occurred (UnrecognizedClientException) when calling the GetAuthorizationToken operation: The security token included in the request is invalid.
```

