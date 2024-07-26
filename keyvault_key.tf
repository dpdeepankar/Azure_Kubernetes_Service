module "key_vault_key" {
  source = "../Modules/keyvault_keys"

  keyvaultkey = {
    kvkey1 = {
      name         = "demo-key-aks-kms"
      key_vault_id = module.keyvault.key_vault_id[0]
      key_type     = "RSA"
      key_size     = 2048
    }
  }

  depends_on = [module.keyvault]
}