module "disk_encryption_set" {
  source = "../Modules/disk_encryption_set"

  tags = local.TAGS
  disk_encryption_set = {
    des1 = {
      name                      = local.DISK_ENCRYPTION_SET
      resource_group_name       = local.RESOURCE_GROUP_NAME
      location                  = local.LOCATION
      key_vault_key_id          = module.key_vault_key.key_vault_key_id[0]
      user_assigned_identity_id = module.useridentity.user_assigned_identity_id[0]
    }
  }
}