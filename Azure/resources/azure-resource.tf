terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
subscription_id = "0f39574d-d756-48cf-b622-0e27a6943bd2"
  tenantId= "3617ef9b-98b4-40d9-ba43-e1ed6709cf0d"
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastus"
}