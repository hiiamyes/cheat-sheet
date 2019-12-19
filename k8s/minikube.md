# Minikube

[minikube](https://github.com/kubernetes/minikube)

```
brew cask install minikube
```

[Hyperkit driver](https://minikube.sigs.k8s.io/docs/reference/drivers/hyperkit/)

```
brew install hyperkit

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& sudo install -o root -g wheel -m 4755 docker-machine-driver-hyperkit /usr/local/bin/

minikube config set vm-driver hyperkit
```

# Create a Cluster

```
minikube version
minikube start
minikube start --kubernetes-version v1.14.0
minikube start --kubernetes-version v1.17.0
minikube dashboard
minikube stop
minikube delete
```

# Deploy local image

[How to use local docker images with Minikube?](https://stackoverflow.com/questions/42564058/how-to-use-local-docker-images-with-minikube)
[Reusing the Docker daemon](https://github.com/kubernetes/minikube/blob/0c616a6b42b28a1aab8397f5a9061f8ebbd9f3d9/README.md#reusing-the-docker-daemon)

As the [README](https://github.com/kubernetes/minikube/blob/0c616a6b42b28a1aab8397f5a9061f8ebbd9f3d9/README.md#reusing-the-docker-daemon) describes, you can reuse the Docker daemon from Minikube with `eval $(minikube docker-env)`.

```
eval $(minikube docker-env)
docker build -t foo:0.0.1 .
kubectl run hello-foo --image=foo:0.0.1 --image-pull-policy=Never

eval $(minikube docker-env -u)
```
