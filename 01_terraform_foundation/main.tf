# specify provider, provider source and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
# configure the specified provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = "075b9f4c-734d-44f7-8eb5-ef267c529b63"
  client_id                  = "13cdd189-35c1-477f-a6b5-dac041c99df8"
  client_secret              = "rOR8Q~k5._blPONvd.B4xoD~GgzYhGratOSZhbsi"
  tenant_id                  = "a5c3c934-0868-4e61-bc72-204f09e8cb57"
}

# Create a resource group
resource "azurerm_resource_group" "testTF_resource_group" {
  name     = "TestTFresources1"
  location = "West Europe"
}

