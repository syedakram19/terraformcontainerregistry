
resource "azurerm_resource_group" "aks_rg224" {
  name     = "my-aks-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "my-aks-cluster2245"
  resource_group_name = azurerm_resource_group.aks_rg224.name
  location            = azurerm_resource_group.aks_rg224.location
  dns_prefix          = "myakscluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  service_principal {
    client_id     = "f64266a0-72d5-4696-bea3-e1d77ff906bc"
    client_secret = "~nW8Q~f~t5zBdYJvSsmjVydWsZo_odnHMZ5NdbqD"
  }
}
