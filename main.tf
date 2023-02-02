###version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0, <4.0.0"
    }
  }
  required_version = ">= 1.2"
}
###provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

###main
resource "azurerm_static_site" "staticwebapps" {
  name                = "test-identity-swa"
  location            = "West Europe"
  resource_group_name = "rg-e1-np-app-psp-dev"
  sku_tier            = "Standard"
  sku_size            = "Standard"
  identity {
    type         = "SystemAssigned"
    identity_ids = []
  }
}
