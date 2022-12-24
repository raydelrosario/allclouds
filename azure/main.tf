resource "azurerm_resource_group" "main" {
  name     = "allclouds-rg"
  location = "eastus2"
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "allclouds-cluster"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "allclouds-cluster"

  default_node_pool {
    node_count = 1
    name       = "default"
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}