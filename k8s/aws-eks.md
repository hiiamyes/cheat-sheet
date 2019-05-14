# [Authentication](https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)

## Adding new user to cluster

!! For the first time you're going to add a new user to cluster, you need to use the cluster creator's profile to do so, cause we'll need to update the `aws-auth` ConfigMap by `kubectl` which need the permission.

## [Manage users or roles](https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html)

To grant additional AWS users or roles the ability to interact with your cluster, you must edit the `aws-auth` ConfigMap within Kubernetes.

```
kubectl describe configmap -n kube-system aws-auth
kubectl edit -n kube-system configmap/aws-auth
```

```
// configmap/aws-auth
apiVersion: v1
data:
    mapUsers: |
        - userarn: arn:aws:iam::555555555555:user/admin
        username: admin
        groups:
            - system:masters
```

# [Getting Started](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html)

## Prerequisites

1. Create your Amazon EKS Service Role
1. Create your Amazon EKS Cluster VPC
1. Install and Configure kubectl for Amazon EKS

```
brew install kubernetes-cli
brew install aws-iam-authenticator
```

## Step 1: Create Your Amazon EKS Cluster

## Step 2: Create a kubeconfig File

```
aws eks --region ap-southeast-1 update-kubeconfig --name cluster-name
kubectl get svc
```

```
error: You must be logged in to the server (Unauthorized)
```

[Managing Users or IAM Roles for your Cluster](https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html)

```
curl -o aws-auth-cm.yaml https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-02-11/aws-auth-cm.yaml
```

```
kubectl apply -f aws-auth-cm.yaml
```

If you assumed a role to create the Amazon EKS cluster, you must ensure that kubectl is configured to assume the same role. Use the following command to update your kubeconfig file to use an IAM role. For more information, see Create a kubeconfig for Amazon EKS.

```
aws --region region eks update-kubeconfig --name cluster_name --role-arn arn:aws:iam::aws_account_id:role/role_name
```

## Step 3: Launch and Configure Amazon EKS Worker Nodes

## Step 4: Launch a Guest Book Application
