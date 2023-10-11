## https://artifacthub.io/packages/helm/bitnami/grafana-operator

resource "helm_release" "grafana_operator" {
  depends_on = [
    kubernetes_namespace.monitoring
  ]
  name          = "grafana-operator"
  repository    = "oci://registry-1.docker.io/bitnamicharts"
  chart         = "grafana-operator"
  version       = "3.4.8"
  namespace     = "monitoring"
  recreate_pods = true

  values = [
    file("config/grafana-operator.values.yaml")
  ]
}