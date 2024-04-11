module "azurerm_redis_cache" {
  # source  = "blackbird-cloud/redis-cache/azurerm"
  # version = "~> 1"

  source = "../../terraform-azurerm-redis-cache"

  resource_group_name     = "shared-tools"
  resource_group_location = "westeurope"

  redis_name = "example-redis"

  sku_name = "Basic"
  family   = "C"
  capacity = 1

  redis_configuration = {

  }

  public_network_access_enabled = false
  subnet_id                     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/shared-tools/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
}
