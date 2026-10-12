resource "snowflake_database" "databases" {
  for_each = var.databases

  name                                          = each.value.name
  catalog                                       = each.value.catalog
  comment                                       = each.value.comment
  data_retention_time_in_days                   = each.value.data_retention_time_in_days
  default_ddl_collation                         = each.value.default_ddl_collation
  default_notebook_compute_pool_cpu             = each.value.default_notebook_compute_pool_cpu
  default_notebook_compute_pool_gpu             = each.value.default_notebook_compute_pool_gpu
  drop_public_schema_on_creation                = each.value.drop_public_schema_on_creation
  enable_console_output                         = each.value.enable_console_output
  external_volume                               = each.value.external_volume
  is_transient                                  = each.value.is_transient
  log_event_level                               = each.value.log_event_level
  log_level                                     = each.value.log_level
  max_data_extension_time_in_days               = each.value.max_data_extension_time_in_days
  quoted_identifiers_ignore_case                = each.value.quoted_identifiers_ignore_case
  replace_invalid_characters                    = each.value.replace_invalid_characters
  storage_serialization_policy                  = each.value.storage_serialization_policy
  suspend_task_after_num_failures               = each.value.suspend_task_after_num_failures
  task_auto_retry_attempts                      = each.value.task_auto_retry_attempts
  trace_level                                   = each.value.trace_level
  user_task_managed_initial_warehouse_size      = each.value.user_task_managed_initial_warehouse_size
  user_task_minimum_trigger_interval_in_seconds = each.value.user_task_minimum_trigger_interval_in_seconds
  user_task_timeout_ms                          = each.value.user_task_timeout_ms

  dynamic "replication" {
    for_each = each.value.replication != null ? [each.value.replication] : []
    content {
      dynamic "enable_to_account" {
        for_each = replication.value.enable_to_account
        content {
          account_identifier = enable_to_account.value.account_identifier
          with_failover      = enable_to_account.value.with_failover
        }
      }
      ignore_edition_check = replication.value.ignore_edition_check
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

