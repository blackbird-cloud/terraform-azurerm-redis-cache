<!-- BEGIN_TF_DOCS -->
# Terraform Azurerm Redis Cache Module
Terraform module to create an Azure Redis Cache

[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Example
```hcl
module "azurerm_redis_cache" {
  source  = "blackbird-cloud/redis-cache/azurerm"
  version = "~> 1"

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
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_redis_cache.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity"></a> [capacity](#input\_capacity) | The size of the Redis instance | `number` | n/a | yes |
| <a name="input_family"></a> [family](#input\_family) | The family of the Redis instance | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether or not public network access is enabled for the Redis instance | `bool` | `true` | no |
| <a name="input_redis_configuration"></a> [redis\_configuration](#input\_redis\_configuration) | A map of Redis configuration settings | <pre>object({<br>    aof_backup_enabled                      = optional(bool, false)<br>    aof_storage_connection_string_0         = optional(string, null)<br>    aof_storage_connection_string_1         = optional(string, null)<br>    enable_authentication                   = optional(bool, true)<br>    active_directory_authentication_enabled = optional(bool, false)<br>    maxmemory_reserved                      = optional(string, null)<br>    maxmemory_delta                         = optional(string, null)<br>    maxmemory_policy                        = optional(string, null)<br>    maxfragmentation_memory_reserved        = optional(string, null)<br>    data_persistence_authentication_method  = optional(string, null)<br>    rdb_backup_enabled                      = optional(bool, false)<br>    rdb_backup_frequency                    = optional(string, null)<br>    rdb_backup_max_snapshot_count           = optional(number, null)<br>    rdb_storage_connection_string           = optional(string, null)<br>    storage_account_subscription_id         = optional(string, null)<br>  })</pre> | n/a | yes |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | The name of the Redis instance | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the resource group | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU name of the Redis instance | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet to place the Redis instance in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis_cache_host_name"></a> [redis\_cache\_host\_name](#output\_redis\_cache\_host\_name) | The host name of the Redis Cache |
| <a name="output_redis_cache_id"></a> [redis\_cache\_id](#output\_redis\_cache\_id) | The ID of the Redis Cache |
| <a name="output_redis_cache_name"></a> [redis\_cache\_name](#output\_redis\_cache\_name) | The name of the Redis Cache |
| <a name="output_redis_cache_port"></a> [redis\_cache\_port](#output\_redis\_cache\_port) | The port of the Redis Cache |
| <a name="output_redis_cache_primary_access_key"></a> [redis\_cache\_primary\_access\_key](#output\_redis\_cache\_primary\_access\_key) | The primary access key of the Redis Cache |
| <a name="output_redis_cache_primary_connection_string"></a> [redis\_cache\_primary\_connection\_string](#output\_redis\_cache\_primary\_connection\_string) | The primary connection string of the Redis Cache |
| <a name="output_redis_cache_secondary_access_key"></a> [redis\_cache\_secondary\_access\_key](#output\_redis\_cache\_secondary\_access\_key) | The secondary access key of the Redis Cache |
| <a name="output_redis_cache_secondary_connection_string"></a> [redis\_cache\_secondary\_connection\_string](#output\_redis\_cache\_secondary\_connection\_string) | The secondary connection string of the Redis Cache |
| <a name="output_redis_cache_ssl_port"></a> [redis\_cache\_ssl\_port](#output\_redis\_cache\_ssl\_port) | The SSL port of the Redis Cache |
| <a name="output_redis_configuration"></a> [redis\_configuration](#output\_redis\_configuration) | The Redis configuration of the Redis Cache |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2024 [Blackbird Cloud](https://blackbird.cloud)
<!-- END_TF_DOCS -->