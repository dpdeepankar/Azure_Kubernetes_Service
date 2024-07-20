module "aks_cluster" {
  source = "../Modules/aks"

  aks_cluster = {
    aks1 = {
        name = local.AKS_CLUSTER_NAME
        resource_group_name = local.AKS_RESOURCE_GROUP_NAME
        location = local.LOCATION
        default_node_pool_name = local.AKS_DEFAULT_NODE_POOL_NAME
        default_node_pool_vm_size = local.AKS_DEFAULT_NODE_POOL_SIZE

    }
  }


  depends_on = [ module.subnets ]
}