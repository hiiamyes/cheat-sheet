# Service

https://kubernetes.io/docs/concepts/services-networking/service/

An abstract way to expose an application running on a set of Pods as a network service.

With Kubernetes you don’t need to modify your application to use an unfamiliar service discovery mechanism. Kubernetes gives Pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them.

## [Create](https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/#creating-a-service)

```
kubectl apply -f api-service.yaml
```

## Update

## Delete

```
kubectl delete -f api-service.yaml
```

or

```
kubectl delete service api-service
```

## List

```
kubectl get services
```

## Get

## Expose

```
kubectl expose api-deployment --type="LoadBalancer"
```

## Defining a Service

```yaml
# api-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: api
spec:
  selector:
    app: api
  ports:
    - protocol: TCP
      port: 80
      targetPort: 9376
      nodePort: 30003
```

[Service](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#service-v1-core)

[ServiceSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#servicespec-v1-core)

[ServicePort](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)

- spec.ports.type
  - [NodePort](https://kubernetes.io/docs/concepts/services-networking/service/#nodeport)
  - LoadBalancers
- spec.ports.targetPort
  - A Service can map any incoming port to a targetPort.
  - By default and for convenience, the targetPort is set to the same value as the port field.

- `spec.ports.nodePort`
  - range: 30000-32767
  - expose to localhost!!
  
