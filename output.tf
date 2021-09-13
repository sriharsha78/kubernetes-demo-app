
# AKS Output
output "aks_resource_id" {
    value = "${azurerm_kubernetes_cluster.k8scluster.id}"
}

output "kube_config" {
  sensitive = true
  value = "${azurerm_kubernetes_cluster.k8scluster.kube_config_raw}"
}

output "client_key" {
  sensitive = true
  value = "${azurerm_kubernetes_cluster.k8scluster.kube_config.0.client_key}"
}

output "client_certificate" {
  sensitive = true
  value = "${azurerm_kubernetes_cluster.k8scluster.kube_config.0.client_certificate}"
}

output "cluster_ca_certificate" {
  sensitive = true
  value = "${azurerm_kubernetes_cluster.k8scluster.kube_config.0.cluster_ca_certificate}"
}

output "host" {
  value = "${azurerm_kubernetes_cluster.k8scluster.kube_config.0.host}"
}

output "admin_username" {
  value = "${var.admin_username}"
}

output "jenkins_pip" {
  value = "${azurerm_public_ip.jenkins_pip.ip_address}"
}

