
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.18.0"
    }
  }
}


provider "azurerm" {
  features {}

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
}

# Define Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Terraform Backend Configuration
terraform {
  backend "azurerm" {
    resource_group_name   = var.backend_resource_group
    storage_account_name  = var.storage_account_name
    container_name        = var.storage_container_name
    key                   = var.state_file_name
  }
}