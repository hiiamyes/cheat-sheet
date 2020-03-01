# Ingress

## Install Ingress Controller

https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

```
minikube addons enable ingress
kubectl get pods -n kube-system
```

```
vim /etc/hosts
[minikube ip] [host]
```

## Example

```yaml
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: test-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
    - host: service.test
      http:
        paths:
          - path: /testpath
            backend:
              serviceName: test
              servicePort: 80
```
