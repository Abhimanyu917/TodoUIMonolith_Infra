resource "azurerm_subnet" "deva-subnet" {
    for_each = var.child_subnet
    name = each.value.name
    resource_group_name  = each.value.rg_name
    virtual_network_name = each.value.vnet_name
    address_prefixes     = each.value.address_prefixes
  
}