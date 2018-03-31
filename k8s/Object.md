## Kubernetes object 

### Deployment

https://kubernetes.io/docs/concepts/workloads/controllers/deployment/


* defines the container spec required
* with the name and labels used by other parts of Kubernetes to discover and connect to the application.

* to launch an application called webappp1 
* using the Docker Image katacoda/docker-http-server 
* that runs on Port 80.

```
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1
spec:
  replicas: 1 // Control the number of instances running.
  template:
    metadata:
      labels:
        app: webapp1
    spec: // Pod template’s specification
      containers:
      - name: webapp1
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
```

```
kubectl create -f deployment.yaml
kubectl get deployment
kubectl describe deployment webapp1
```

### Service

* powerful networking capabilities that control how applications communicate.
* The Service selects all applications with the label webapp1.
* The Service makes the application available via a NodePort.

```
apiVersion: v1
kind: Service
metadata:
  name: webapp1-svc
  labels:
    app: webapp1
spec:
  type: NodePort
  ports:
  - port: 80
    nodePort: 30080
  selector:
    app: webapp1
```

```
kubectl create -f service.yaml
kubectl get svc
kubectl describe svc webapp1-svc
```

### Replication Controller

* Ingress
* This controller combines a software load balancer, such as Nginx or HAProxy, with Kubernetes integration for configuring itself based on the defined rules.

```
kubectl get rc
```

### Reference

https://www.katacoda.com/courses/kubernetes/creating-kubernetes-yaml-definitions
