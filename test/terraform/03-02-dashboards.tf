## https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx

resource "helm_release" "dashboards" {
  depends_on = [
    kubernetes_namespace.monitoring
  ]
  name         = "dashboards"
  chart        = "../../charts/grafana/dashboards"
  namespace    = kubernetes_namespace.monitoring.id
  force_update = true
}
