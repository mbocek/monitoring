## https://artifacthub.io/packages/helm/bitnami/kube-prometheus
## https://github.com/bitnami/charts/tree/main/bitnami/kube-prometheus
## version https://github.com/bitnami/charts/blob/main/bitnami/kube-prometheus/Chart.yaml

# Install prometheus
resource "helm_release" "prometheus" {
  depends_on = [
    kubernetes_namespace.monitoring
  ]
  name          = "prometheus"
  repository    = "oci://registry-1.docker.io/bitnamicharts"
  chart         = "kube-prometheus"
  version       = "8.21.0"
  namespace     = "monitoring"
  recreate_pods = true

  values = [
    file("config/prometheus.values.yaml")
  ]
}