module "useridentity" {
  source = "../Modules/user_identity"

  tags = local.TAGS
  useridentity = {
    ui1 = {
      name                = "aks-cp-mi"
      resource_group_name = local.RESOURCE_GROUP_NAME
      location            = local.LOCATION
    },
    ui2 = {
      name                = "aks-kub-mi"
      resource_group_name = local.RESOURCE_GROUP_NAME
      location            = local.LOCATION
    }
  }
}