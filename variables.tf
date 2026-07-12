variable "data_factory_linked_service_azure_blob_storages" {
  description = <<EOT
Map of data_factory_linked_service_azure_blob_storages, attributes below
Required:
    - data_factory_id
    - name
Optional:
    - additional_properties
    - annotations
    - connection_string
    - connection_string_key_vault_id (alternative to connection_string - read from Key Vault instead)
    - connection_string_key_vault_secret_name (alternative to connection_string - read from Key Vault instead)
    - connection_string_insecure
    - description
    - integration_runtime_name
    - parameters
    - sas_uri
    - sas_uri_key_vault_id (alternative to sas_uri - read from Key Vault instead)
    - sas_uri_key_vault_secret_name (alternative to sas_uri - read from Key Vault instead)
    - service_endpoint
    - service_endpoint_key_vault_id (alternative to service_endpoint - read from Key Vault instead)
    - service_endpoint_key_vault_secret_name (alternative to service_endpoint - read from Key Vault instead)
    - service_principal_id
    - service_principal_key
    - storage_kind
    - tenant_id
    - use_managed_identity
    - key_vault_sas_token (block):
        - linked_service_name (required)
        - secret_name (required)
    - sas_token_linked_key_vault_key (block):
        - linked_service_name (required)
        - secret_name (required)
    - service_principal_linked_key_vault_key (block):
        - linked_service_name (required)
        - secret_name (required)
EOT

  type = map(object({
    data_factory_id                         = string
    name                                    = string
    additional_properties                   = optional(map(string))
    annotations                             = optional(list(string))
    connection_string                       = optional(string)
    connection_string_key_vault_id          = optional(string)
    connection_string_key_vault_secret_name = optional(string)
    connection_string_insecure              = optional(string)
    description                             = optional(string)
    integration_runtime_name                = optional(string)
    parameters                              = optional(map(string))
    sas_uri                                 = optional(string)
    sas_uri_key_vault_id                    = optional(string)
    sas_uri_key_vault_secret_name           = optional(string)
    service_endpoint                        = optional(string)
    service_endpoint_key_vault_id           = optional(string)
    service_endpoint_key_vault_secret_name  = optional(string)
    service_principal_id                    = optional(string)
    service_principal_key                   = optional(string)
    storage_kind                            = optional(string)
    tenant_id                               = optional(string)
    use_managed_identity                    = optional(bool) # Default: false
    key_vault_sas_token = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    sas_token_linked_key_vault_key = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    service_principal_linked_key_vault_key = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.connection_string == null || (length(v.connection_string) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.connection_string_insecure == null || (length(v.connection_string_insecure) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.storage_kind == null || (contains(["Storage", "StorageV2", "BlobStorage", "BlockBlobStorage"], v.storage_kind))
      )
    ])
    error_message = "must be one of: Storage, StorageV2, BlobStorage, BlockBlobStorage"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.sas_uri == null || (length(v.sas_uri) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.sas_token_linked_key_vault_key == null || (length(v.sas_token_linked_key_vault_key.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.sas_token_linked_key_vault_key == null || (length(v.sas_token_linked_key_vault_key.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.service_principal_linked_key_vault_key == null || (length(v.service_principal_linked_key_vault_key.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.service_principal_linked_key_vault_key == null || (length(v.service_principal_linked_key_vault_key.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.service_endpoint == null || (length(v.service_endpoint) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.service_principal_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_principal_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.service_principal_key == null || (length(v.service_principal_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_blob_storages : (
        v.tenant_id == null || (length(v.tenant_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_azure_blob_storage's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

