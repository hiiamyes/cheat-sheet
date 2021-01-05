# Debug

How to debug remote eks?

- ssh?

https://aws.amazon.com/premiumsupport/knowledge-center/eks-cluster-connection/

After you create your Amazon EKS cluster, you must then configure your kubeconfig file with the AWS Command Line Interface (AWS CLI). This configuration allows you to connect to your cluster using the kubectl command line.

```
aws eks update-kubeconfig \
  --profile yeeeeees \
  --region ap-southeast-1 \
  --name staging-v2-eks-cluster \
  --alias staging-v2
```

```
cat ~/.kube/config
```

List all pods

```
kubectl get pods -n staging-v2
```

Login the container

```
kubectl exec -it {container_name} -n staging-v2 bash
```
