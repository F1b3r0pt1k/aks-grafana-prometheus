resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

resource "azurerm_kubernetes_cluster" "aks_1" {
  name                = "${var.base_name}-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.base_name}-aks"
  kubernetes_version  = "1.26.6"
  node_resource_group = "${var.base_name}-aks-nodes"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}
