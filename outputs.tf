output "redis_cache_id" {
  description = "The ID of the Redis Cache"
  value       = azurerm_redis_cache.default.id
}

output "redis_cache_name" {
  description = "The name of the Redis Cache"
  value       = azurerm_redis_cache.default.name
}

output "redis_cache_host_name" {
  description = "The host name of the Redis Cache"
  value       = azurerm_redis_cache.default.hostname
}

output "redis_cache_port" {
  description = "The port of the Redis Cache"
  value       = azurerm_redis_cache.default.port
}

output "redis_cache_ssl_port" {
  description = "The SSL port of the Redis Cache"
  value       = azurerm_redis_cache.default.ssl_port
}

output "redis_cache_primary_access_key" {
  description = "The primary access key of the Redis Cache"
  sensitive   = true
  value       = azurerm_redis_cache.default.primary_access_key
}

output "redis_cache_secondary_access_key" {
  description = "The secondary access key of the Redis Cache"
  sensitive   = true
  value       = azurerm_redis_cache.default.secondary_access_key
}

output "redis_cache_primary_connection_string" {
  description = "The primary connection string of the Redis Cache"
  sensitive   = true
  value       = azurerm_redis_cache.default.primary_connection_string
}

output "redis_cache_secondary_connection_string" {
  description = "The secondary connection string of the Redis Cache"
  sensitive   = true
  value       = azurerm_redis_cache.default.secondary_connection_string
}

output "redis_configuration" {
  description = "The Redis configuration of the Redis Cache"
  sensitive   = true
  value       = azurerm_redis_cache.default.redis_configuration
}
