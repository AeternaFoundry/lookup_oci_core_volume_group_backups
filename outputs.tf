output "core_volume_group_backups_lookup_id" {
  description = "Map of id values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_volume_group_backups_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_volume_group_backups_lookup_display_name" {
  description = "Map of display_name values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_volume_group_backups_lookup_filter" {
  description = "Map of filter values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_volume_group_backups_lookup_volume_group_backups" {
  description = "Map of volume_group_backups values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no volume_group_backups are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.volume_group_backups if v.volume_group_backups != null && length(v.volume_group_backups) > 0 }
}
output "core_volume_group_backups_lookup_volume_group_id" {
  description = "Map of volume_group_id values across all core_volume_group_backups_lookup, keyed the same as var.core_volume_group_backups_lookup except keys with no volume_group_id are omitted"
  value       = { for k, v in data.oci_core_volume_group_backups.core_volume_group_backups_lookup : k => v.volume_group_id if v.volume_group_id != null && length(v.volume_group_id) > 0 }
}

