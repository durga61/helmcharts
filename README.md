# kube-prometheus-stack

kubectl create namespace monitoring

# Add prometheus-community repo
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update helm repo
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring
kubectl get pods -n monitoring

kubectl expose service prometheus-kube-prometheus-prometheus  --type=NodePort --target-port=9090   \
--name=prometheus-kube-prometheus-prometheus-ext --namespace=monitoring

kubectl expose service prometheus-grafana --type=NodePort --target-port=3000 --name=prometheus-grafana-ext --namespace=monitoring

kubectl get secret --namespace monitoring prometheus-grafana -o yaml
or 

edit grafana svc and change type to NodePort
---

install standalone grafana and prometheus
https://jhooq.com/prometheous-k8s-aws-setup/

