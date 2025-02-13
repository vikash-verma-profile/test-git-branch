variable "resource_group_name" {
  type    = string
  default = "Terraform-RG"
}

variable "location" {
  type    = string
  default = "East US"
}
variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_TENANT_ID" {}
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  default     = "Terraform-RG"
}

variable "location" {
  description = "The Azure region where resources will be deployed"
}

variable "backend_resource_group" {
  description = "The resource group where Terraform state storage is located"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account for Terraform state"
  default     = "your-storage-account-name"
}

variable "storage_container_name" {
  description = "The name of the container for storing Terraform state files"
  default     = "tfstate"
}

variable "state_file_name" {
  description = "The name of the Terraform state file"
  default     = "terraform.tfstate"
}
