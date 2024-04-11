variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}

variable "redis_name" {
  description = "The name of the Redis instance"
  type        = string
}

variable "capacity" {
  description = "The size of the Redis instance"
  type        = number
}

variable "family" {
  description = "The family of the Redis instance"
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the Redis instance"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Whether or not public network access is enabled for the Redis instance"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "The ID of the subnet to place the Redis instance in"
  type        = string
}

variable "redis_configuration" {
  description = "A map of Redis configuration settings"
  type = object({
    aof_backup_enabled                      = optional(bool, false)
    aof_storage_connection_string_0         = optional(string, null)
    aof_storage_connection_string_1         = optional(string, null)
    enable_authentication                   = optional(bool, true)
    active_directory_authentication_enabled = optional(bool, false)
    maxmemory_reserved                      = optional(string, null)
    maxmemory_delta                         = optional(string, null)
    maxmemory_policy                        = optional(string, null)
    maxfragmentation_memory_reserved        = optional(string, null)
    data_persistence_authentication_method  = optional(string, null)
    rdb_backup_enabled                      = optional(bool, false)
    rdb_backup_frequency                    = optional(string, null)
    rdb_backup_max_snapshot_count           = optional(number, null)
    rdb_storage_connection_string           = optional(string, null)
    storage_account_subscription_id         = optional(string, null)
  })
}
