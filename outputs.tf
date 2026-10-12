output "databases_id" {
  description = "Map of id values across all databases, keyed the same as var.databases except keys with no id are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "databases_catalog" {
  description = "Map of catalog values across all databases, keyed the same as var.databases except keys with no catalog are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.catalog if v.catalog != null && length(v.catalog) > 0 }
}
output "databases_comment" {
  description = "Map of comment values across all databases, keyed the same as var.databases except keys with no comment are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "databases_data_retention_time_in_days" {
  description = "Map of data_retention_time_in_days values across all databases, keyed the same as var.databases except keys with no data_retention_time_in_days are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.data_retention_time_in_days if v.data_retention_time_in_days != null }
}
output "databases_default_ddl_collation" {
  description = "Map of default_ddl_collation values across all databases, keyed the same as var.databases except keys with no default_ddl_collation are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.default_ddl_collation if v.default_ddl_collation != null && length(v.default_ddl_collation) > 0 }
}
output "databases_default_notebook_compute_pool_cpu" {
  description = "Map of default_notebook_compute_pool_cpu values across all databases, keyed the same as var.databases except keys with no default_notebook_compute_pool_cpu are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.default_notebook_compute_pool_cpu if v.default_notebook_compute_pool_cpu != null && length(v.default_notebook_compute_pool_cpu) > 0 }
}
output "databases_default_notebook_compute_pool_gpu" {
  description = "Map of default_notebook_compute_pool_gpu values across all databases, keyed the same as var.databases except keys with no default_notebook_compute_pool_gpu are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.default_notebook_compute_pool_gpu if v.default_notebook_compute_pool_gpu != null && length(v.default_notebook_compute_pool_gpu) > 0 }
}
output "databases_drop_public_schema_on_creation" {
  description = "Map of drop_public_schema_on_creation values across all databases, keyed the same as var.databases except keys with no drop_public_schema_on_creation are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.drop_public_schema_on_creation if v.drop_public_schema_on_creation != null }
}
output "databases_enable_console_output" {
  description = "Map of enable_console_output values across all databases, keyed the same as var.databases except keys with no enable_console_output are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.enable_console_output if v.enable_console_output != null }
}
output "databases_external_volume" {
  description = "Map of external_volume values across all databases, keyed the same as var.databases except keys with no external_volume are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.external_volume if v.external_volume != null && length(v.external_volume) > 0 }
}
output "databases_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all databases, keyed the same as var.databases except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "databases_is_transient" {
  description = "Map of is_transient values across all databases, keyed the same as var.databases except keys with no is_transient are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.is_transient if v.is_transient != null }
}
output "databases_log_event_level" {
  description = "Map of log_event_level values across all databases, keyed the same as var.databases except keys with no log_event_level are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.log_event_level if v.log_event_level != null && length(v.log_event_level) > 0 }
}
output "databases_log_level" {
  description = "Map of log_level values across all databases, keyed the same as var.databases except keys with no log_level are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.log_level if v.log_level != null && length(v.log_level) > 0 }
}
output "databases_max_data_extension_time_in_days" {
  description = "Map of max_data_extension_time_in_days values across all databases, keyed the same as var.databases except keys with no max_data_extension_time_in_days are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.max_data_extension_time_in_days if v.max_data_extension_time_in_days != null }
}
output "databases_name" {
  description = "Map of name values across all databases, keyed the same as var.databases except keys with no name are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "databases_quoted_identifiers_ignore_case" {
  description = "Map of quoted_identifiers_ignore_case values across all databases, keyed the same as var.databases except keys with no quoted_identifiers_ignore_case are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.quoted_identifiers_ignore_case if v.quoted_identifiers_ignore_case != null }
}
output "databases_replace_invalid_characters" {
  description = "Map of replace_invalid_characters values across all databases, keyed the same as var.databases except keys with no replace_invalid_characters are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.replace_invalid_characters if v.replace_invalid_characters != null }
}
output "databases_replication" {
  description = "Map of replication values across all databases, keyed the same as var.databases except keys with no replication are omitted"
  value       = { for k, v in snowflake_database.databases : k => one(v.replication) if v.replication != null && length(v.replication) > 0 }
}
output "databases_storage_serialization_policy" {
  description = "Map of storage_serialization_policy values across all databases, keyed the same as var.databases except keys with no storage_serialization_policy are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.storage_serialization_policy if v.storage_serialization_policy != null && length(v.storage_serialization_policy) > 0 }
}
output "databases_suspend_task_after_num_failures" {
  description = "Map of suspend_task_after_num_failures values across all databases, keyed the same as var.databases except keys with no suspend_task_after_num_failures are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.suspend_task_after_num_failures if v.suspend_task_after_num_failures != null }
}
output "databases_task_auto_retry_attempts" {
  description = "Map of task_auto_retry_attempts values across all databases, keyed the same as var.databases except keys with no task_auto_retry_attempts are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.task_auto_retry_attempts if v.task_auto_retry_attempts != null }
}
output "databases_trace_level" {
  description = "Map of trace_level values across all databases, keyed the same as var.databases except keys with no trace_level are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.trace_level if v.trace_level != null && length(v.trace_level) > 0 }
}
output "databases_user_task_managed_initial_warehouse_size" {
  description = "Map of user_task_managed_initial_warehouse_size values across all databases, keyed the same as var.databases except keys with no user_task_managed_initial_warehouse_size are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.user_task_managed_initial_warehouse_size if v.user_task_managed_initial_warehouse_size != null && length(v.user_task_managed_initial_warehouse_size) > 0 }
}
output "databases_user_task_minimum_trigger_interval_in_seconds" {
  description = "Map of user_task_minimum_trigger_interval_in_seconds values across all databases, keyed the same as var.databases except keys with no user_task_minimum_trigger_interval_in_seconds are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.user_task_minimum_trigger_interval_in_seconds if v.user_task_minimum_trigger_interval_in_seconds != null }
}
output "databases_user_task_timeout_ms" {
  description = "Map of user_task_timeout_ms values across all databases, keyed the same as var.databases except keys with no user_task_timeout_ms are omitted"
  value       = { for k, v in snowflake_database.databases : k => v.user_task_timeout_ms if v.user_task_timeout_ms != null }
}

