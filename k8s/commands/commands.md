[Kubectl Reference Docs](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
[kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

# Mac

## Installation

[Install kubectl on macOS](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-macos)

```
brew install kubernetes-cli
```

```
kubectl version
kubectl cluster-info // Let’s view the cluster details.
kubectl get nodes // To view the nodes in the cluster.
```

## Creating Objects

`apply` manages applications through files defining Kubernetes resources. It creates and updates resources in a cluster through running kubectl apply. This is the recommended way of managing Kubernetes applications on production. See Kubectl Book.

```
kubectl apply -f ./my-manifest.yaml           # create resource(s)
kubectl apply -f ./my1.yaml -f ./my2.yaml     # create from multiple files
kubectl apply -f ./dir                        # create resource(s) in all manifest files in dir
kubectl apply -f https://git.io/vPieo         # create resource(s) from url
kubectl create deployment nginx --image=nginx  # start a single instance of nginx
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

## Deleting Resources

```
# Delete a pod using the type and name specified in pod.json
kubectl delete -f ./pod.json

# Delete pods and services with same names "baz" and "foo"
kubectl delete pod,service baz foo

# Delete pods and services with label name=myLabel
kubectl delete pods,services -l name=myLabel

# Delete pods and services, including uninitialized ones, with label name=myLabel
kubectl delete pods,services -l name=myLabel --include-uninitialized

# Delete all pods and services, including uninitialized ones, in namespace my-ns,
kubectl -n my-ns delete po,svc --all

# Delete all pods matching the awk pattern1 or pattern2
kubectl get pods  -n mynamespace --no-headers=true | awk '/pattern1|pattern2/{print $1}' | xargs  kubectl delete -n mynamespace pod
```

## kubeconfig

[Organizing Cluster Access Using kubeconfig Files](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/)

Use kubeconfig files to organize information about clusters, users, namespaces, and authentication mechanisms.

## Reference

https://kubernetes.io/docs/tutorials/

https://kubernetes.io/docs/user-guide/kubectl-overview/

```
patch="{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"timestamp\":\"$timestamp\"}}}}}"
kubectl --namespace="${namespace}" patch deployments "${image}" -p "$patch"
kubectl --namespace="${namespace}" rollout status -w "deployment/${image}"
```

## Context and config

```
cat ~/.kube/config
kubectl config view
kubectl config get-contexts
kubectl config use-context minikube
```
