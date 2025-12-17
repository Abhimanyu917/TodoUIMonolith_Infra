data "azurerm_subnet" "subnetdata" {
  for_each             = var.child_vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}
