# main.tf

provider "azurerm" {
  features {}
}

resource "azurerm_user_assigned_identity" "example_identity" {
  name                = var.username
  resource_group_name = var.resource_group_name
  location            = var.location
}


