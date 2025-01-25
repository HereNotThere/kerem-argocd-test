helm repo add argo https://argoproj.github.io/argo-helm
helm repo add external-secrets https://charts.external-secrets.io
helm repo update

# TODO: don't hardcode the environment name
kubectl apply -f ./environments/gamma/applications.yaml