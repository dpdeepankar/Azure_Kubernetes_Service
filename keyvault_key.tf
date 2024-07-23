data "azurerm_key_vault" "this" {
  name = "demo-kv"
  resource_group_name = local.RESOURCE_GROUP_NAME

  depends_on = [ module.keyvault ]
}

module "key_vault_key" {
  source = "../Modules/keyvault_keys"

  keyvaultkey = {
    kvkey1 = {
        name = "demo-key-aks-kms"
        key_vault_id = data.azurerm_key_vault.this.id
        key_type = "RSA"
        key_size = 2048
    }
  }

  depends_on = [ module.keyvault ]
}