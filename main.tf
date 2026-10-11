data "oci_delegate_access_control_service_provider_actions" "delegate_access_control_service_provider_actions_lookup" {
  for_each = var.delegate_access_control_service_provider_actions_lookup

  compartment_id                = each.value.compartment_id
  name                          = each.value.name
  resource_type                 = each.value.resource_type
  service_provider_service_type = each.value.service_provider_service_type
  state                         = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

