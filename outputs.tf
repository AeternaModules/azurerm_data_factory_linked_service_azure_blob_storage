output "data_factory_linked_service_azure_blob_storages_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.additional_properties }
}
output "data_factory_linked_service_azure_blob_storages_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.annotations }
}
output "data_factory_linked_service_azure_blob_storages_connection_string" {
  description = "Map of connection_string values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.connection_string }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_connection_string_insecure" {
  description = "Map of connection_string_insecure values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.connection_string_insecure }
}
output "data_factory_linked_service_azure_blob_storages_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.data_factory_id }
}
output "data_factory_linked_service_azure_blob_storages_description" {
  description = "Map of description values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.description }
}
output "data_factory_linked_service_azure_blob_storages_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.integration_runtime_name }
}
output "data_factory_linked_service_azure_blob_storages_key_vault_sas_token" {
  description = "Map of key_vault_sas_token values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.key_vault_sas_token }
}
output "data_factory_linked_service_azure_blob_storages_name" {
  description = "Map of name values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.name }
}
output "data_factory_linked_service_azure_blob_storages_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.parameters }
}
output "data_factory_linked_service_azure_blob_storages_sas_token_linked_key_vault_key" {
  description = "Map of sas_token_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.sas_token_linked_key_vault_key }
}
output "data_factory_linked_service_azure_blob_storages_sas_uri" {
  description = "Map of sas_uri values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.sas_uri }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_endpoint" {
  description = "Map of service_endpoint values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_endpoint }
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_principal_id" {
  description = "Map of service_principal_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_id }
}
output "data_factory_linked_service_azure_blob_storages_service_principal_key" {
  description = "Map of service_principal_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_key }
}
output "data_factory_linked_service_azure_blob_storages_service_principal_linked_key_vault_key" {
  description = "Map of service_principal_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.service_principal_linked_key_vault_key }
}
output "data_factory_linked_service_azure_blob_storages_storage_kind" {
  description = "Map of storage_kind values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.storage_kind }
}
output "data_factory_linked_service_azure_blob_storages_tenant_id" {
  description = "Map of tenant_id values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.tenant_id }
}
output "data_factory_linked_service_azure_blob_storages_use_managed_identity" {
  description = "Map of use_managed_identity values across all data_factory_linked_service_azure_blob_storages, keyed the same as var.data_factory_linked_service_azure_blob_storages"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : k => v.use_managed_identity }
}

