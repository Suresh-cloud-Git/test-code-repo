terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}

  subscription_id = "8888575e-1be3-4d16-8500-ee8a4a1b570c"

}
resource "azurerm_resource_group" "rgs" {
  for_each = {

    "rg_0307_1" = "eastus"
    "rg_0307_2" = "eastus"
    "rg_0307_3" = "eastus"


  }
  name = each.key
  location = each.value
  }


