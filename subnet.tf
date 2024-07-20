module "subnets" {
  source = "../Modules/subnet"

  subnets = {
    snet1 = {
        name = "k8s-subnet"
        resource_group_name = local.RESOURCE_GROUP_NAME
        virtual_network_name = local.VIRTUAL_NETWORK_NAME
        address_prefixes = ["172.16.1.0/24"]
    }
  }

  depends_on = [ module.virtual-network ]
}