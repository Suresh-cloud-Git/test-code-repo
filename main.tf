
resource "azurerm_resource_group" "rgs" {
  for_each = {

    "rg_0307_1" = "eastus"
    "rg_0307_2" = "eastus"
    "rg_0307_3" = "eastus"


  }
  name = each.key
  location = each.value
  }


