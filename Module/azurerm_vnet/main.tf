resource "azurerm_virtual_network" "dev-vnet" {
    for_each = var.child_vnet
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg_name
    address_space = each.value.address_space
  
}