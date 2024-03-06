
resource "azurerm_resource_group" "acr_rg224" {
  name     = "my-acr-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "myacr2245"
  resource_group_name = azurerm_resource_group.acr_rg224.name
  location            = azurerm_resource_group.acr_rg224.location
  sku                 = "Standard"
}
