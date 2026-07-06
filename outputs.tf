output "data_factory_linked_service_azure_blob_storages" {
  description = "All data_factory_linked_service_azure_blob_storage resources"
  value       = azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.additional_properties]
}
output "data_factory_linked_service_azure_blob_storages_annotations" {
  description = "List of annotations values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.annotations]
}
output "data_factory_linked_service_azure_blob_storages_connection_string" {
  description = "List of connection_string values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.connection_string]
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_connection_string_insecure" {
  description = "List of connection_string_insecure values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.connection_string_insecure]
}
output "data_factory_linked_service_azure_blob_storages_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.data_factory_id]
}
output "data_factory_linked_service_azure_blob_storages_description" {
  description = "List of description values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.description]
}
output "data_factory_linked_service_azure_blob_storages_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.integration_runtime_name]
}
output "data_factory_linked_service_azure_blob_storages_key_vault_sas_token" {
  description = "List of key_vault_sas_token values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.key_vault_sas_token]
}
output "data_factory_linked_service_azure_blob_storages_name" {
  description = "List of name values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.name]
}
output "data_factory_linked_service_azure_blob_storages_parameters" {
  description = "List of parameters values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.parameters]
}
output "data_factory_linked_service_azure_blob_storages_sas_token_linked_key_vault_key" {
  description = "List of sas_token_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.sas_token_linked_key_vault_key]
}
output "data_factory_linked_service_azure_blob_storages_sas_uri" {
  description = "List of sas_uri values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.sas_uri]
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_endpoint" {
  description = "List of service_endpoint values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.service_endpoint]
  sensitive   = true
}
output "data_factory_linked_service_azure_blob_storages_service_principal_id" {
  description = "List of service_principal_id values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.service_principal_id]
}
output "data_factory_linked_service_azure_blob_storages_service_principal_key" {
  description = "List of service_principal_key values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.service_principal_key]
}
output "data_factory_linked_service_azure_blob_storages_service_principal_linked_key_vault_key" {
  description = "List of service_principal_linked_key_vault_key values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.service_principal_linked_key_vault_key]
}
output "data_factory_linked_service_azure_blob_storages_storage_kind" {
  description = "List of storage_kind values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.storage_kind]
}
output "data_factory_linked_service_azure_blob_storages_tenant_id" {
  description = "List of tenant_id values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.tenant_id]
}
output "data_factory_linked_service_azure_blob_storages_use_managed_identity" {
  description = "List of use_managed_identity values across all data_factory_linked_service_azure_blob_storages"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_blob_storage.data_factory_linked_service_azure_blob_storages : v.use_managed_identity]
}

