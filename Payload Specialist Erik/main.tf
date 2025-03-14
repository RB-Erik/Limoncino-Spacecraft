# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "rg-Erik"
  location = "West Europe"
  
  tags = {
    owner = "erik.reindl@redbull.com"
  }
}