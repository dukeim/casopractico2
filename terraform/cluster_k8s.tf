/*
resource "azurerm_kubernetes_cluster" "myk8s" {
  name                = "jego-aks1"
  location            = var.location_name
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "jegoaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_role_assignment" "role_acrpull" {
  principal_id                     = azurerm_kubernetes_cluster.myk8s.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}
*/