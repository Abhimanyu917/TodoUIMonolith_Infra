module "dev-rg" {
  source   = "../Module/azurerm_rg"
  child_rg = var.root_rg

}

module "dev-vnet" {
  source     = "../Module/azurerm_vnet"
  child_vnet = var.root_vnet
  depends_on = [module.dev-rg]
}

module "deva_subnet" {
  source       = "../Module/azurerm_subnet"
  child_subnet = var.root_subnet
  depends_on   = [module.dev-vnet]
}

# module "dev_pip" {
#   source = "../Module/azurerm_pip"
#   child_pip = var.root_pip

# }
module "dev_linux_vm" {
  source     = "../Module/azurerm_vm"
  child_vms  = var.root_vms
  depends_on = [module.deva_subnet, module.dev-rg, module.dev-vnet]
}

module "sql_server" {
  depends_on      = [module.dev-rg]
  source          = "../Module/azurerm_sqlserver"
  sql_server_name = "sql-dev-todoapp-786"
  rg_name         = "dev-rg-1"
  location        = "east asia"
  admin_username  = "devopsadmin"
  admin_password  = "P@ssw01rd@123"

}

module "msqldatabase" {
  source = "../Module/azurerm_msqldatabase"
  depends_on = [module.sql_server]
  sql_db_name = "sqldb-dev-todoapp"
  server_id   = module.sql_server.server_id
  max_size_gb = "2"

}
