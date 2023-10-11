## https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx

resource "helm_release" "rules" {
  depends_on = [
    kubernetes_namespace.monitoring
  ]
  name  = "rules"
  chart = "../../charts/rules/monitoring"
  namespace = kubernetes_namespace.monitoring.id
}
