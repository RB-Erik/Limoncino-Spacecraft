# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "lizzyressource"
  location = "West Europe"

  tags = {
    owner = "elisabeth.greibl@redbull.com"
  }
}