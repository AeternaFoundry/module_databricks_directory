variable "directories" {
  description = <<EOT
Map of directories, attributes below
Required:
    - path
Optional:
    - delete_recursive
    - object_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path             = string
    delete_recursive = optional(bool)
    object_id        = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

