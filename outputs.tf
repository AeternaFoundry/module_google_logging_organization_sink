output "logging_organization_sinks_id" {
  description = "Map of id values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no id are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logging_organization_sinks_bigquery_options" {
  description = "Map of bigquery_options values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no bigquery_options are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => one(v.bigquery_options) if v.bigquery_options != null && length(v.bigquery_options) > 0 }
}
output "logging_organization_sinks_deletion_policy" {
  description = "Map of deletion_policy values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "logging_organization_sinks_description" {
  description = "Map of description values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no description are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "logging_organization_sinks_destination" {
  description = "Map of destination values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no destination are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "logging_organization_sinks_disabled" {
  description = "Map of disabled values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no disabled are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.disabled if v.disabled != null }
}
output "logging_organization_sinks_exclusions" {
  description = "Map of exclusions values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no exclusions are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.exclusions if v.exclusions != null && length(v.exclusions) > 0 }
}
output "logging_organization_sinks_filter" {
  description = "Map of filter values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no filter are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "logging_organization_sinks_include_children" {
  description = "Map of include_children values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no include_children are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.include_children if v.include_children != null }
}
output "logging_organization_sinks_intercept_children" {
  description = "Map of intercept_children values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no intercept_children are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.intercept_children if v.intercept_children != null }
}
output "logging_organization_sinks_name" {
  description = "Map of name values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no name are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logging_organization_sinks_org_id" {
  description = "Map of org_id values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no org_id are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "logging_organization_sinks_writer_identity" {
  description = "Map of writer_identity values across all logging_organization_sinks, keyed the same as var.logging_organization_sinks except keys with no writer_identity are omitted"
  value       = { for k, v in google_logging_organization_sink.logging_organization_sinks : k => v.writer_identity if v.writer_identity != null && length(v.writer_identity) > 0 }
}

