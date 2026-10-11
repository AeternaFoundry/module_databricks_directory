output "directories_id" {
  description = "Map of id values across all directories, keyed the same as var.directories except keys with no id are omitted"
  value       = { for k, v in databricks_directory.directories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directories_delete_recursive" {
  description = "Map of delete_recursive values across all directories, keyed the same as var.directories except keys with no delete_recursive are omitted"
  value       = { for k, v in databricks_directory.directories : k => v.delete_recursive if v.delete_recursive != null }
}
output "directories_object_id" {
  description = "Map of object_id values across all directories, keyed the same as var.directories except keys with no object_id are omitted"
  value       = { for k, v in databricks_directory.directories : k => v.object_id if v.object_id != null }
}
output "directories_path" {
  description = "Map of path values across all directories, keyed the same as var.directories except keys with no path are omitted"
  value       = { for k, v in databricks_directory.directories : k => v.path if v.path != null && length(v.path) > 0 }
}
output "directories_provider_config" {
  description = "Map of provider_config values across all directories, keyed the same as var.directories except keys with no provider_config are omitted"
  value       = { for k, v in databricks_directory.directories : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "directories_workspace_path" {
  description = "Map of workspace_path values across all directories, keyed the same as var.directories except keys with no workspace_path are omitted"
  value       = { for k, v in databricks_directory.directories : k => v.workspace_path if v.workspace_path != null && length(v.workspace_path) > 0 }
}

