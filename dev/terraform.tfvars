root_rg = {
  rg1 = {
    name     = "dev-rg-1"
    location = "east asia"
  }

}
root_vnet = {
  vnet1 = {
    name          = "dev-vnet-1"
    location      = "east asia"
    rg_name       = "dev-rg-1"
    address_space = ["10.0.0.0/16"]
  }
}

root_subnet = {
  subnet1 = {
    name             = "dev-fsubnet-1"
    rg_name          = "dev-rg-1"
    vnet_name        = "dev-vnet-1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet2 = {
    name             = "dev-bsubnet-1"
    rg_name          = "dev-rg-1"
    vnet_name        = "dev-vnet-1"
    address_prefixes = ["10.0.2.0/24"]
  }
}

root_vms = {
  vm1 = {
    pip_name          = "dev-pip-1"
    allocation_method = "Static"
    vm_name           = "dev-linux-vm-1"
    location          = "east asia"
    rg_name           = "dev-rg-1"
    nic_name          = "dev-nic-1"
    subnet_name       = "dev-fsubnet-1"
    vnet_name         = "dev-vnet-1"
    admin_username    = "adminuser"
    admin_password    = "P@ssword1234"
  }

  vm2 = {
    pip_name          = "dev-pip-2"
    allocation_method = "Static"
    vm_name           = "dev-linux-vm-2"
    location          = "east asia"
    rg_name           = "dev-rg-1"
    nic_name          = "dev-nic-2"
    subnet_name       = "dev-bsubnet-1"
    vnet_name         = "dev-vnet-1"
    admin_username    = "adminuser"
    admin_password    = "P@ssword1234"
  }
}

# root_pip = {
#   pip1 = {
#     name              = "dev-pip-1"
#     location          = var.location
#     rg_name           = "dev-rg-1"
#     allocation_method = "Dynamic"
#   }

#   pip2 = {
#     name              = "dev-pip-2"
#     location          = var.location
#     rg_name           = "dev-rg-1"
#     allocation_method = "Static"
#   }
# }
