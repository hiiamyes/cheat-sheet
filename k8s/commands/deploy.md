# Deploy an App

**Create the deployment**

```
// deprecated
// kubectl run NAME --image=image [--port=port]
kubectl run kubernetes-bootcamp --image=docker.io/jocatalin/kubernetes-bootcamp:v1 --port=8080
```

```
kubectl apply -f https://k8s.io/examples/controllers/nginx-deployment.yaml
```

Note: You may specify the –record flag to write the command executed in the resource annotation kubernetes.io/change-cause. It is useful for future introspection. For example, to see the commands executed in each Deployment revision.

**List your deployments**

```
kubectl get deployments
```

**Create a proxy that will forward communications into the cluster-wide, private network.**

```
kubectl proxy

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
curl http://localhost:8001/version
curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/$POD_NAME/
```
