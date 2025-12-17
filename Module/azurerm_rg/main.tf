resource "azurerm_resource_group" "dev-rg" {
    for_each = var.child_rg
    name = each.value.name
    location = each.value.location
  
}