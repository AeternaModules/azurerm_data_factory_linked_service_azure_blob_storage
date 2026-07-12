data "azurerm_key_vault_secret" "connection_string" {
  for_each     = { for k, v in var.data_factory_linked_service_azure_blob_storages : k => v if v.connection_string_key_vault_id != null && v.connection_string_key_vault_secret_name != null }
  name         = each.value.connection_string_key_vault_secret_name
  key_vault_id = each.value.connection_string_key_vault_id
}
data "azurerm_key_vault_secret" "sas_uri" {
  for_each     = { for k, v in var.data_factory_linked_service_azure_blob_storages : k => v if v.sas_uri_key_vault_id != null && v.sas_uri_key_vault_secret_name != null }
  name         = each.value.sas_uri_key_vault_secret_name
  key_vault_id = each.value.sas_uri_key_vault_id
}
data "azurerm_key_vault_secret" "service_endpoint" {
  for_each     = { for k, v in var.data_factory_linked_service_azure_blob_storages : k => v if v.service_endpoint_key_vault_id != null && v.service_endpoint_key_vault_secret_name != null }
  name         = each.value.service_endpoint_key_vault_secret_name
  key_vault_id = each.value.service_endpoint_key_vault_id
}
resource "azurerm_data_factory_linked_service_azure_blob_storage" "data_factory_linked_service_azure_blob_storages" {
  for_each = var.data_factory_linked_service_azure_blob_storages

  data_factory_id            = each.value.data_factory_id
  name                       = each.value.name
  additional_properties      = each.value.additional_properties
  annotations                = each.value.annotations
  connection_string          = each.value.connection_string != null ? each.value.connection_string : try(data.azurerm_key_vault_secret.connection_string[each.key].value, null)
  connection_string_insecure = each.value.connection_string_insecure
  description                = each.value.description
  integration_runtime_name   = each.value.integration_runtime_name
  parameters                 = each.value.parameters
  sas_uri                    = each.value.sas_uri != null ? each.value.sas_uri : try(data.azurerm_key_vault_secret.sas_uri[each.key].value, null)
  service_endpoint           = each.value.service_endpoint != null ? each.value.service_endpoint : try(data.azurerm_key_vault_secret.service_endpoint[each.key].value, null)
  service_principal_id       = each.value.service_principal_id
  service_principal_key      = each.value.service_principal_key
  storage_kind               = each.value.storage_kind
  tenant_id                  = each.value.tenant_id
  use_managed_identity       = each.value.use_managed_identity

  dynamic "key_vault_sas_token" {
    for_each = each.value.key_vault_sas_token != null ? [each.value.key_vault_sas_token] : []
    content {
      linked_service_name = key_vault_sas_token.value.linked_service_name
      secret_name         = key_vault_sas_token.value.secret_name
    }
  }

  dynamic "sas_token_linked_key_vault_key" {
    for_each = each.value.sas_token_linked_key_vault_key != null ? [each.value.sas_token_linked_key_vault_key] : []
    content {
      linked_service_name = sas_token_linked_key_vault_key.value.linked_service_name
      secret_name         = sas_token_linked_key_vault_key.value.secret_name
    }
  }

  dynamic "service_principal_linked_key_vault_key" {
    for_each = each.value.service_principal_linked_key_vault_key != null ? [each.value.service_principal_linked_key_vault_key] : []
    content {
      linked_service_name = service_principal_linked_key_vault_key.value.linked_service_name
      secret_name         = service_principal_linked_key_vault_key.value.secret_name
    }
  }
}

