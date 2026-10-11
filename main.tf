data "oci_core_volume_group_backups" "core_volume_group_backups_lookup" {
  for_each = var.core_volume_group_backups_lookup

  compartment_id  = each.value.compartment_id
  display_name    = each.value.display_name
  volume_group_id = each.value.volume_group_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

