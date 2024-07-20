module "resource-group" {
  source = "../Modules/resource-group"

  resourcegroup = {
    rg = {
        name = local.RESOURCE_GROUP_NAME
        location = local.LOCATION
    }
  }
}