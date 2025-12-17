terraform {
  backend "azurerm" {
    resource_group_name  = "abhi-rg"
    storage_account_name = "abhistg11223"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
