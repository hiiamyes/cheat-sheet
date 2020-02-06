# ConfigMap

For setting environment...

ConfigMaps allow you to decouple configuration artifacts from image content to keep containerized applications portable.

https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/

## Create

```
kubectl create configmap [NAME] [DATA]
```

- DATA
  - a path to a directory containing one or more configuration files, indicated using the --from-file flag
  - key-value pairs, each specified using --from-literal flags

```
kubectl create -f api.env
```

## Example

## Use ConfigMap to replace Node.js .env file
