resource "azurerm_user_assigned_identity" "identity-1" {
  name                = "identity-1"
  resource_group_name = azurerm_resource_group.rg-1.name
  location            = azurerm_resource_group.rg-1.location
}

resource "azurerm_role_assignment" "role-assignment-1" {
  scope                = azurerm_resource_group.rg-1.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.identity-1.principal_id
}