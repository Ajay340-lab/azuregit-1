resourec "azurerm" "rg-1" {
  features {}
}
resource "azurerm_resource_group" "rg-1" {
  name     = "rg-1"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet-1" {
  name                = "vnet-1"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg-1.name
}
