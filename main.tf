resource "google_logging_organization_sink" "logging_organization_sinks" {
  for_each = var.logging_organization_sinks

  destination        = each.value.destination
  name               = each.value.name
  org_id             = each.value.org_id
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  disabled           = each.value.disabled
  filter             = each.value.filter
  include_children   = each.value.include_children
  intercept_children = each.value.intercept_children

  dynamic "bigquery_options" {
    for_each = each.value.bigquery_options != null ? [each.value.bigquery_options] : []
    content {
      use_partitioned_tables = bigquery_options.value.use_partitioned_tables
    }
  }

  dynamic "exclusions" {
    for_each = each.value.exclusions != null ? each.value.exclusions : []
    content {
      description = exclusions.value.description
      disabled    = exclusions.value.disabled
      filter      = exclusions.value.filter
      name        = exclusions.value.name
    }
  }
}

