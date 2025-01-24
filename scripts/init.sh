helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm install argocd argo/argo-cd \
  --version 7.7.16 \
  --namespace argocd \
  --set server.ingress.enabled=true \
  --set server.ingress.hosts={your-argocd.example.com} \
  --set server.service.type=ClusterIP \
  --create-namespace

# TODO: maybe all of these should also be a separate helm chart that describe underlying resources for the entire project

