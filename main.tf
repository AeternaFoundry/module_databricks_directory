resource "databricks_directory" "directories" {
  for_each = var.directories

  path             = each.value.path
  delete_recursive = each.value.delete_recursive
  object_id        = each.value.object_id

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

