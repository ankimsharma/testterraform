variable "client_secret" {
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "5deee0d2-4018-4d36-936e-2927bd58560b"
  client_secret   = var.client_secret
  tenant_id       = "a5c3c934-0868-4e61-bc72-204f09e8cb57"
  subscription_id = "075b9f4c-734d-44f7-8eb5-ef267c529b63"
}
