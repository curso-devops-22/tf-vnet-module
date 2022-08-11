output "output-vnet-id" {
  value = azurerm_virtual_network.lab-vnet.id
}

output "output-vnet-name" {
  value = azurerm_virtual_network.lab-vnet.name
}

output "output-vnet-address-space" {
  value = azurerm_virtual_network.lab-vnet.address_space
}

output "output-vnet-subnets" {
  value = azurerm_subnet.lab-subnets.*.id
}