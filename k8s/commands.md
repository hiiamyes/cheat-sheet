# Mac

## Installation

[minikube](https://github.com/kubernetes/minikube)
```
brew cask install minikube
```

[Hyperkit driver](https://github.com/kubernetes/minikube/blob/master/docs/drivers.md#hyperkit-driver)
```
brew install hyperkit

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& sudo install -o root -g wheel -m 4755 docker-machine-driver-hyperkit /usr/local/bin/

minikube config set vm-driver hyperkit
```

## Create a Cluster
```
minikube version
minikube start // Start the cluster.

kubectl version
kubectl cluster-info // Let’s view the cluster details.
kubectl get nodes // To view the nodes in the cluster.
```

## Deploy an App
```
// kubectl run NAME --image=image [--port=port] 
kubectl run kubernetes-bootcamp --image=docker.io/jocatalin/kubernetes-bootcamp:v1 --port=8080

// To list your deployments
kubectl get deployments 

// Create a proxy that will forward communications into the cluster-wide, private network.
kubectl proxy

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
curl http://localhost:8001/version
curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/$POD_NAME/
```

## Explore Your App

```
// Look for existing Pods.
kubectl get pods

// To view what containers are inside that Pod and what images are used to build those containers.
kubectl describe pods 

// Anything that the application would normally send to STDOUT becomes logs for the container within the Pod. 
kubectl logs $POD_NAME

// Start a bash session in the Pod’s container
kubectl exec -ti $POD_NAME bash 
```



## Reference
https://kubernetes.io/docs/tutorials/
https://kubernetes.io/docs/user-guide/kubectl-overview/







patch="{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"timestamp\":\"$timestamp\"}}}}}"

kubectl --namespace="${namespace}" patch deployments "${image}" -p "$patch"

kubectl --namespace="${namespace}" rollout status -w "deployment/${image}"

