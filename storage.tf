resource "azurerm_storage_account" "storage-1" {
  name                     = "storage1"
  resource_group_name      = azurerm_resource_group.rg-1.name
  location                 = azurerm_resource_group.rg-1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}   

resource "azurerm_storage_container" "container-1" {
  name                  = "container1"
  storage_account_name  = azurerm_storage_account.storage-1.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob-1" {
  name                   = "blob1"
  storage_account_name   = azurerm_storage_account.storage-1.name
  storage_container_name = azurerm_storage_container.container-1.name
  type                   = "Block"
  source_content         = "Hello, World!"
}