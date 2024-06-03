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
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "testTF_resource_group" {
  name     = "example-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "TestTF_vitual_network" {
  name                = "TestTF-network"
  resource_group_name = azurerm_resource_group.testTF_resource_group.name
  location            = azurerm_resource_group.testTF_resource_group.location
  address_space       = ["10.0.0.0/16"]
}
