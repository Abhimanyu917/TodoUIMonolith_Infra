# resource "azurerm_public_ip" "deva_pip" {
#     for_each = var.child_pip
#     name = each.value.name
#     location = each.value.location
#     resource_group_name = each.value.rg_name
#     allocation_method = each.value.allocation_method
  
# }