# ECR

https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html
http://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth

```
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 516329534218.dkr.ecr.us-east-1.amazonaws.com/yesleeme_rendertron
```

An error occurred (UnrecognizedClientException) when calling the GetAuthorizationToken operation: The security token included in the request is invalid.

## Push images

Make sure that you have the latest version of the AWS CLI and Docker installed. For more information, see Getting Started with Amazon ECR .
Use the following steps to authenticate and push an image to your repository. For additional registry authentication methods, including the Amazon ECR credential helper, see Registry Authentication .

1. Retrieve an authentication token and authenticate your Docker client to your registry.
   Use the AWS CLI:

```
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 516329534218.dkr.ecr.us-east-1.amazonaws.com
```

Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.

1. Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:

```
docker build -t hiiiike_web .
```

1. After the build completes, tag your image so you can push the image to this repository:

```
docker tag hiiiike_web:latest 516329534218.dkr.ecr.us-east-1.amazonaws.com/hiiiike_web:latest
```

1. Run the following command to push this image to your newly created AWS repository:

```
docker push 516329534218.dkr.ecr.us-east-1.amazonaws.com/hiiiike_web:latest
```

## Pull images

https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html

```
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 516329534218.dkr.ecr.us-east-1.amazonaws.com
aws ecr describe-repositories
aws ecr describe-images --repository-name hiiiike_web
docker pull 516329534218.dkr.ecr.us-east-1.amazonaws.com/hiiiike_web:latest
```
