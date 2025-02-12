provider "azurerm" {
  features {}
  subscription_id = "af1fc9db-46ec-4432-a9a9-baecfdd29a96"
}

resource "azurerm_resource_group" "example" {
  name     = "Terraform-RG"
  location = "East US"
}
