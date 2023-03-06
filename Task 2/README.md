# Instructions
## 1- Create namespace on kuberenetes cluster
```kubectl create namespace test```

## 2- Create Deployment
```kubectl create deployment juice-shop --namespace test --image=bkimminich/juice-shop```

where deployment name is juice-shop, namespace name is test and the image name is bkimminich/juice-shop

## 3- Expose pods to port 3000 inside the cluster
```kubectl expose deployment juice-shop --port=3000 --target-port=3000 --type=ClusterIP```

This will create a service of type cluster ip which exposes the pods on port 3000

## 4- Expose pods outside cluster using ingress
```kubectl apply -f ingress.yaml --namespace test```
This will create an ingress service that connects the juice-shop cluster ip service to the domain "example.com" 