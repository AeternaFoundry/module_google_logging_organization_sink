variable "logging_organization_sinks" {
  description = <<EOT
Map of logging_organization_sinks, attributes below
Required:
    - destination
    - name
    - org_id
Optional:
    - deletion_policy
    - description
    - disabled
    - filter
    - include_children
    - intercept_children
    - bigquery_options (block):
        - use_partitioned_tables (required)
    - exclusions (block):
        - description (optional)
        - disabled (optional)
        - filter (required)
        - name (required)
EOT

  type = map(object({
    destination        = string
    name               = string
    org_id             = string
    deletion_policy    = optional(string)
    description        = optional(string)
    disabled           = optional(bool)
    filter             = optional(string)
    include_children   = optional(bool)
    intercept_children = optional(bool)
    bigquery_options = optional(object({
      use_partitioned_tables = bool
    }))
    exclusions = optional(list(object({
      description = optional(string)
      disabled    = optional(bool)
      filter      = string
      name        = string
    })))
  }))
}

