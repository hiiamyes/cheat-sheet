
Official Cheat Sheet
https://kubernetes.io/docs/user-guide/kubectl-cheatsheet/


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




## Namespaces

execute commands under some namespace...

```
kubectl --namespace ...
```

## Delete

```
kubectl delete deployment test
```

patch="{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"timestamp\":\"$timestamp\"}}}}}"

kubectl --namespace="${namespace}" patch deployments "${image}" -p "$patch"

kubectl --namespace="${namespace}" rollout status -w "deployment/${image}"


## Port

nodePort     The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually
integer      assigned by the system. If specified, it will be allocated to the service if unused or else creation of the
             service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: 
             http://kubernetes.io/docs/user-guide/services#type--nodeport

port         The port that will be exposed by this service.
integer

targetPort   Number or name of the port to access on the pods targeted by the service. Number must be in the range 1
IntOrString  to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the
             target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map).
             This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field.
             More info: http://kubernetes.io/docs/user-guide/services#defining-a-service


## Minikube

If your service has a nodeport, you can access it from the host like:
curl http://$(minikube ip):$NODEPORT
https://github.com/kubernetes/minikube/issues/211

## Docker

```
helm install stable/redis
```

NOTES:
Redis can be accessed via port 6379 on the following DNS name from within your cluster:
inline-web-local-redis-redis.default.svc.cluster.local
To get your password run:

```
REDIS_PASSWORD=$(kubectl get secret --namespace default inline-web-local-redis-redis -o jsonpath="{.data.redis-password}" | base64 --decode)
```

To connect to your Redis server:

1. Run a Redis pod that you can use as a client:

```
kubectl run --namespace default inline-web-local-redis-redis-client --rm --tty -i --env REDIS_PASSWORD=$REDIS_PASSWORD --image bitnami/redis:4.0.2-r1 -- bash
```

2. Connect using the Redis CLI:

```
redis-cli -h inline-web-local-redis-redis -a $REDIS_PASSWORD
```
