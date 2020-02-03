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
kubectl get api-deployment
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

```
kubectl logs api-deployment
```

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
