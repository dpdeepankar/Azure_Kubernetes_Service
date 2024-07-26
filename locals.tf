locals {
  RESOURCE_GROUP_NAME        = "infrarg"
  LOCATION                   = "centralindia"
  VIRTUAL_NETWORK_NAME       = "infra-vnet"
  VNET_ADDRESS_SPACE         = ["172.16.0.0/17"]
  AKS_RESOURCE_GROUP_NAME    = "aks-rg"
  AKS_CLUSTER_NAME           = "demoaks"
  AKS_DEFAULT_NODE_POOL_NAME = "system"
  AKS_DEFAULT_NODE_POOL_SIZE = "Standard_D2_v2"
  TAGS                       = { "Environment" = "Dev", "Application" = "Demo" }
  DISK_ENCRYPTION_SET        = "demo-des"
}