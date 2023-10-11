## https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx

resource "helm_release" "ingress_nginx" {
  depends_on = [
    kubernetes_namespace.monitoring
  ]
  name          = "ingress-nginx"
  repository    = "https://kubernetes.github.io/ingress-nginx"
  chart         = "ingress-nginx"
  version       = "4.8.1"
  namespace     = "monitoring"
  recreate_pods = true

  values = [
    file("config/ingress-nginx.values.yaml")
  ]
}
