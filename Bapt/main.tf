# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "BaptResourceGroup"
  location = "West Europe"

  tags = {
    owner = "baptiste.achard@redbull.com"
  }
}