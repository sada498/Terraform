terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {

features {}

}

# resource "azurerm_resource_group" "rg" {
#     name     = "1-be1f2f1e-playground-sandbox"
#   location = "west us"
# }
output "azurerm_resource_group" {
  name =azurerm_resource_group.rg

  
}