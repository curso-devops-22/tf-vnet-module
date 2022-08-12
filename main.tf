resource "azurerm_virtual_network" "lab-vnet" {
  name                = var.vnet-name
  location            = var.rg-location
  resource_group_name = var.rg-name
  address_space       = var.address-space
}

resource "azurerm_subnet" "lab-subnets" {
  count                = length(var.subnet-name)
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.lab-vnet.name
  name                 = var.subnet-name[count.index]
  address_prefixes     = [var.subnet-prefixes[count.index]]
}