module "virtual-network" {
  source = "../Modules/virtual-network"

  virtual_network = {
    vnet1 = {
        name = local.VIRTUAL_NETWORK_NAME
        resource_group_name = local.RESOURCE_GROUP_NAME
        location = local.LOCATION
        address_space = local.VNET_ADDRESS_SPACE
    }
  }
  tags = local.TAGS

  depends_on = [ module.resource-group ]
}