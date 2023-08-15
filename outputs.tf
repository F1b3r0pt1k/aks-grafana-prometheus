output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks_1.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_1.kube_config_raw
  sensitive = true
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.aks_1.name
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}