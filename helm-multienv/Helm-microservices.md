## create
helm create ui

hemlm template <release> -f <value.yml> <dir>
helm template dev-deploy -f ui/values-dev.yaml ui > dev.yml
helm template dev-deploy -f ui/values-qa.yaml ui > qa.yaml


## install
helm upgrade  release1 -f ui/values-dev.yaml ui --set app.replicas=2
helm install <release> <directory> --set values=""
helm install test test --set app.container.image=nginx:latest

helm install release1 -f ui/values-dev.yaml ui

## upgrade
helm upgrade --install release1 -f ui/values-dev.yaml ui --set app.replicas=2

## rollback
helm rollback release1 1
helm history <release> 
helm del <release>

## micro services heml
use different values.yaml files to define each service and pass it same template 
helm upgrade --install <release> <heml-dir> -f value.<service>.yaml  --set variable=value

## microservices deployment k8s
create deployment and service yaml file and deploy them using kubectl appy -f <deploy.yaml> for each service individually


