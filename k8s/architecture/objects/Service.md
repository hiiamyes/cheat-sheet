# Service

https://kubernetes.io/docs/concepts/services-networking/service/

## Defining a Service

api-service.yaml

```
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
```
