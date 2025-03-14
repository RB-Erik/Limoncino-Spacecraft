# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "rg-Erik"
  location = "West Europe"

  tags = {
    owner = "erik.reindl@redbull.com"
  }
}

# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

# Subnet 1
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}