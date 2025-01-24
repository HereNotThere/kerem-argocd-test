# helm repo add argo https://argoproj.github.io/argo-helm
# helm repo update

# helm install argocd argo/argo-cd \
#   --version 7.7.16 \
#   --namespace argocd \
#   --set server.ingress.enabled=true \
#   --set server.service.type=ClusterIP \
#   --create-namespace


# # TODO: make this configurable, or better yet turn this whole declaration into a separate argo-cd app
argocd app create app-of-apps \
    --dest-namespace argocd \
    --dest-server https://kubernetes.default.svc \
    --repo https://github.com/HereNotThere/kerem-argocd-test \
    --path charts/app-of-apps \
    --values ../../environments/gamma/values.yaml \
    --sync-policy automated \
    --upsert
    
# argocd app sync app-of-apps