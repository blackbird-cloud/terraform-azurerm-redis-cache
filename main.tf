resource "azurerm_redis_cache" "default" {
  name                = var.redis_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  capacity = var.capacity
  family   = var.family
  sku_name = var.sku_name

  enable_non_ssl_port           = false
  public_network_access_enabled = var.public_network_access_enabled
  subnet_id                     = var.subnet_id

  redis_configuration {
    aof_backup_enabled              = var.redis_configuration.aof_backup_enabled
    aof_storage_connection_string_0 = var.redis_configuration.aof_storage_connection_string_0
    aof_storage_connection_string_1 = var.redis_configuration.aof_storage_connection_string_1
    enable_authentication           = var.redis_configuration.enable_authentication
    maxmemory_reserved              = var.redis_configuration.maxmemory_reserved
    maxmemory_delta                 = var.redis_configuration.maxmemory_delta
    maxmemory_policy                = var.redis_configuration.maxmemory_policy
    rdb_backup_enabled              = var.redis_configuration.rdb_backup_enabled
    rdb_backup_frequency            = var.redis_configuration.rdb_backup_frequency
    rdb_backup_max_snapshot_count   = var.redis_configuration.rdb_backup_max_snapshot_count
    rdb_storage_connection_string   = var.redis_configuration.rdb_storage_connection_string
  }
}
