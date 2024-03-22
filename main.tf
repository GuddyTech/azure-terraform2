# main.tf

provider "azurerm" {
  features {}
}

variable "username" {
  description = "The username of the Azure AD user"
  type        = string
}

variable "role_definition_id" {
  description = "The ID of the role definition to assign to the user"
  type        = string
}

resource "azurerm_user_assigned_identity" "example_identity" {
  name                = var.username
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_role_assignment" "example_assignment" {
  scope                = azurerm_user_assigned_identity.example_identity.id
  role_definition_id   = var.role_definition_id
  principal_id         = azurerm_user_assigned_identity.example_identity.principal_id
}