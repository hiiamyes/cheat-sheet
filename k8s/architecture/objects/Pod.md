# [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/)

A Pod is the basic execution unit of a Kubernetes application–the smallest and simplest unit in the Kubernetes object model that you create or deploy. A Pod represents processes running on your Cluster.

## Pod vs Deployment

https://kubernetes.io/docs/concepts/workloads/pods/pod/#durability-of-pods-or-lack-thereof

In general, users shouldn’t need to create Pods directly. They should almost always use controllers even for singletons, for example, Deployments. Controllers provide self-healing with a cluster scope, as well as replication and rollout management. Controllers like StatefulSet can also provide support to stateful Pods.
