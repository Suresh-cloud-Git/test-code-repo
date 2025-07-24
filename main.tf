resource "azurerm_resource_group" rg_23072025 {
    count = length(var.resource_group_names)
    name = var.resource_group_names[count.index]
    location = var.resource_group_location
} 

# resource "azurerm_network_security_group" "example" {
#   name                = "acceptanceTestSecurityGroup1"
#   location            = "westus"
#   resource_group_name = "apple3"
# }


variable "resource_group_names" {
    default = ["apple1","apple3","apple5","apple6"]
  
}
variable "resource_group_location" {
    default = [westus]
  
}
