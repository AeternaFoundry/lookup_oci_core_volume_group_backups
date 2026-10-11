variable "core_volume_group_backups_lookup" {
  description = <<EOT
Map of core_volume_group_backups_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - volume_group_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    display_name    = optional(string)
    volume_group_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

