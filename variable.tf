# variables.tf

variable "username" {
  description = "The username of the Azure AD user"
  type        = string
}

variable "role_definition_id" {
  description = "The ID of the role definition to assign to the user"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to deploy the user-assigned managed identity"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be provisioned"
  type        = string
}

