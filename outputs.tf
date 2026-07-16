output "data_factory_linked_service_azure_blob_storages_id" {
  description = "Map of id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_connection_string" {
  description = "Map of connection_string values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_connection_string_insecure" {
  description = "Map of connection_string_insecure values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.connection_string_insecure if v.connection_string_insecure != null && length(v.connection_string_insecure) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_description" {
  description = "Map of description values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.integration_runtime_name if v.integration_runtime_name != null && length(v.integration_runtime_name) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_key_vault_sas_token" {
  description = "Map of key_vault_sas_token values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.key_vault_sas_token if v.key_vault_sas_token != null && length(v.key_vault_sas_token) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_name" {
  description = "Map of name values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_sas_token_linked_key_vault_key" {
  description = "Map of sas_token_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.sas_token_linked_key_vault_key if v.sas_token_linked_key_vault_key != null && length(v.sas_token_linked_key_vault_key) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_sas_uri" {
  description = "Map of sas_uri values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.sas_uri if v.sas_uri != null && length(v.sas_uri) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_endpoint" {
  description = "Map of service_endpoint values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_endpoint if v.service_endpoint != null && length(v.service_endpoint) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_principal_id" {
  description = "Map of service_principal_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_service_principal_key" {
  description = "Map of service_principal_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_key if v.service_principal_key != null && length(v.service_principal_key) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_service_principal_linked_key_vault_key" {
  description = "Map of service_principal_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_linked_key_vault_key if v.service_principal_linked_key_vault_key != null && length(v.service_principal_linked_key_vault_key) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_storage_kind" {
  description = "Map of storage_kind values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.storage_kind if v.storage_kind != null && length(v.storage_kind) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_tenant_id" {
  description = "Map of tenant_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "data_factory_linked_service_azure_blob_storages_use_managed_identity" {
  description = "Map of use_managed_identity values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.use_managed_identity if v.use_managed_identity != null }
}

