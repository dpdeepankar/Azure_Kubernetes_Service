module "keyvault" {
  source = "../Modules/keyvault"

  tags = local.TAGS
  keyvault = {
    kv1 = {
        name = "demo-kv"
        resource_group_name = local.RESOURCE_GROUP_NAME
        location = local.LOCATION
        sku = "premium"
    }
  }
}