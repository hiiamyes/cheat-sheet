# ConfigMap

For setting environment...

ConfigMaps allow you to decouple configuration artifacts from image content to keep containerized applications portable.

https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/

## API

https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.15/#configmap-v1-core

## Create

```
kubectl create configmap [NAME] [DATA]
```

- DATA
  - a path to a directory containing one or more configuration files, indicated using the --from-file flag
  - key-value pairs, each specified using --from-literal flags

```yml
apiVersion: v1
kind: ConfigMap
metadata:
  name: simpleconfig
data:
  foo: bar
  hello: world
```

```
kubectl create -f api.env
```

## List

```
kubectl get configmap
kubectl describe configmaps [NAME]
```

## Example

## Use ConfigMap to replace Node.js .env file



## Reference

https://itnext.io/learn-how-to-configure-your-kubernetes-apps-using-the-configmap-object-d8f30f99abeb
