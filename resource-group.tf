module "resource-group" {
  source = "../Modules/resource-group"

  resourcegroup = {
    rg1 = {
      name     = local.RESOURCE_GROUP_NAME
      location = local.LOCATION

    },
    rg2 = {
      name     = local.AKS_RESOURCE_GROUP_NAME
      location = local.LOCATION
    }
  }

  tags = local.TAGS
}