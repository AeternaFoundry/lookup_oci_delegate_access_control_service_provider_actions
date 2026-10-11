variable "delegate_access_control_service_provider_actions_lookup" {
  description = <<EOT
Map of delegate_access_control_service_provider_actions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - resource_type
    - service_provider_service_type
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                = string
    name                          = optional(string)
    resource_type                 = optional(string)
    service_provider_service_type = optional(list(string))
    state                         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

