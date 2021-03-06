# Deployment

https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

A Deployment provides declarative updates for Pods and ReplicaSets.

## Create

```
kubectl create deployment nginx --image=nginx
```

```
kubectl apply -f api-deployment.yaml
```

## [Update](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#updating-a-deployment)

```
kubectl
```

## List

```
kubectl get deployment/api-deployment
```

## Describe

```
kubectl describe api-deployments
```

## Delete

```
kubectl delete -f api-deployment.yaml
```

## Log

kubectl logs [TYPE/NAME]

```
kubectl logs -f deployment/api-deployment
```

-f: follow

## Shell

https://kubernetes.io/docs/tasks/debug-application-cluster/get-shell-running-container/

```
kubectl exec -it [TYPE/NAME] -- /bin/sh
```

-i, --stdin=false: Pass stdin to the container
-t, --tty=false: Stdin is a TTY

Note: The double dash symbol “–” is used to separate the arguments you want to pass to the command from the kubectl arguments.

## Config

```yaml
# api-deployment
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: api-deployment
  labels:
    app: api
spec:
  replicas: 1
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: api
  template:
    metadata:
      labels:
        app: api
    spec:
      containers:
        - image: api
          imagePullPolicy: IfNotPresent
          name: api
          ports:
            - containerPort: 3000
```

- [imagePullPolicy](https://kubernetes.io/docs/concepts/containers/images)

  - Never: Use this for local development with minikube
  - IfNotPresent: Default
  - Always: Will always try to pull it from the registry.

- [containerPort](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#containerport-v1-core)
  - Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
