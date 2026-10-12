variable "databases" {
  description = <<EOT
Map of databases, attributes below
Required:
    - name
Optional:
    - catalog
    - comment
    - data_retention_time_in_days
    - default_ddl_collation
    - default_notebook_compute_pool_cpu
    - default_notebook_compute_pool_gpu
    - drop_public_schema_on_creation
    - enable_console_output
    - external_volume
    - is_transient
    - log_event_level
    - log_level
    - max_data_extension_time_in_days
    - quoted_identifiers_ignore_case
    - replace_invalid_characters
    - storage_serialization_policy
    - suspend_task_after_num_failures
    - task_auto_retry_attempts
    - trace_level
    - user_task_managed_initial_warehouse_size
    - user_task_minimum_trigger_interval_in_seconds
    - user_task_timeout_ms
    - replication (block):
        - enable_to_account (required, block):
            - account_identifier (required)
            - with_failover (optional)
        - ignore_edition_check (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                                          = string
    catalog                                       = optional(string)
    comment                                       = optional(string)
    data_retention_time_in_days                   = optional(number)
    default_ddl_collation                         = optional(string)
    default_notebook_compute_pool_cpu             = optional(string)
    default_notebook_compute_pool_gpu             = optional(string)
    drop_public_schema_on_creation                = optional(bool)
    enable_console_output                         = optional(bool)
    external_volume                               = optional(string)
    is_transient                                  = optional(bool)
    log_event_level                               = optional(string)
    log_level                                     = optional(string)
    max_data_extension_time_in_days               = optional(number)
    quoted_identifiers_ignore_case                = optional(bool)
    replace_invalid_characters                    = optional(bool)
    storage_serialization_policy                  = optional(string)
    suspend_task_after_num_failures               = optional(number)
    task_auto_retry_attempts                      = optional(number)
    trace_level                                   = optional(string)
    user_task_managed_initial_warehouse_size      = optional(string)
    user_task_minimum_trigger_interval_in_seconds = optional(number)
    user_task_timeout_ms                          = optional(number)
    replication = optional(object({
      enable_to_account = list(object({
        account_identifier = string
        with_failover      = optional(bool)
      }))
      ignore_edition_check = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.databases : (
        v.replication == null || (length(v.replication.enable_to_account) >= 1)
      )
    ])
    error_message = "Each enable_to_account list must contain at least 1 items"
  }
}

