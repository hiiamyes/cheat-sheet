## install gcloud

ref: 
https://cloud.google.com/sdk/downloads
https://cloud.google.com/storage/docs/gsutil_install


requirement: Python 2.7.x 

```
curl https://sdk.cloud.google.com | bash
```

```
...

Installation directory (this will create a google-cloud-sdk subdirectory) (/Users/yes): 

...

"/Users/yes/google-cloud-sdk" already exists and may contain out of date files.
Remove it before installing? (y/N): y

...

Do you want to help improve the Google Cloud SDK (Y/n)? n

...

Modify profile to update your $PATH and enable shell command 
completion?

Do you want to continue (Y/n)?  Y

...

Enter a path to an rc file to update, or leave blank to use 
[/Users/yes/.bash_profile]:  

```


## Deploy

https://cloud.google.com/kubernetes-engine/docs/quickstart

```
gcloud components install kubectl
gcloud config set project PROJECT_ID
gcloud config set compute/zone us-central1-b
gcloud container clusters get-credentials example-cluster
kubectl run hello-web --image=gcr.io/google-samples/hello-app:1.0 --port=8080
kubectl expose deployment hello-web --type="LoadBalancer"
kubectl get service hello-web
http://EXTERNAL-IP:8080
```

https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app#package_and_deploy_your_application

deploy with gcr (better way)

To package and deploy your application on Kubernetes Engine, you must:

1. Package your app into a Docker image
1. Run the container locally on your machine (optional)
1. Upload the image to a registry
1. Create a container cluster
1. Deploy your app to the cluster
1. Expose your app to the Internet
1. Scale up your deployment
1. Deploy a new version of your app


```

```


