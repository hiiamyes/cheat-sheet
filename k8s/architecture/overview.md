# [Cluster Diagram](https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/#cluster-diagram)

A Kubernetes cluster consists of two types of resources:

- The Master coordinates the cluster: The Master is responsible for managing the cluster.
- Nodes are the workers that run applications: A node is a VM or a physical computer that serves as a worker machine in a Kubernetes cluster.

<img src="https://d33wubrfki0l68.cloudfront.net/99d9808dcbf2880a996ed50d308a186b5900cec9/40b94/docs/tutorials/kubernetes-basics/public/images/module_01_cluster.svg" height="300">

# [Deployment](https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/#cluster-diagram)

<img src="https://d33wubrfki0l68.cloudfront.net/152c845f25df8e69dd24dd7b0836a289747e258a/4a1d2/docs/tutorials/kubernetes-basics/public/images/module_02_first_app.svg" height="300">

# [Pods](https://github.com/hiiamyes/cheat-sheet/blob/master/k8s/kubernetes.md)

When you created a Deployment, Kubernetes created a Pod to host your application instance.

<img src="https://d33wubrfki0l68.cloudfront.net/fe03f68d8ede9815184852ca2a4fd30325e5d15a/98064/docs/tutorials/kubernetes-basics/public/images/module_03_pods.svg" height="300">

# [Node](https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/#node-overview)

A Pod always runs on a Node. A Node is a worker machine in Kubernetes and may be either a virtual or a physical machine, depending on the cluster.

<img src="https://d33wubrfki0l68.cloudfront.net/5cb72d407cbe2755e581b6de757e0d81760d5b86/a9df9/docs/tutorials/kubernetes-basics/public/images/module_03_nodes.svg" height="300">

# [Service](https://kubernetes.io/docs/tutorials/kubernetes-basics/expose/expose-intro/)

A Service in Kubernetes is an abstraction which defines a logical set of Pods and a policy by which to access them.

Although each Pod has a unique IP address, those IPs are not exposed outside the cluster without a Service. Services allow your applications to receive traffic.

<img src="https://d33wubrfki0l68.cloudfront.net/cc38b0f3c0fd94e66495e3a4198f2096cdecd3d5/ace10/docs/tutorials/kubernetes-basics/public/images/module_04_services.svg" height="300">

## type

- ClusterIP
- [NodePort](https://kubernetes.io/docs/concepts/services-networking/service/#nodeport)
- [LoadBalancer](https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer)
- ExternalName

