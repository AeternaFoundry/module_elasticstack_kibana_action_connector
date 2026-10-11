resource "elasticstack_kibana_action_connector" "kibana_action_connectors" {
  for_each = var.kibana_action_connectors

  connector_type_id  = each.value.connector_type_id
  name               = each.value.name
  config             = each.value.config
  connector_id       = each.value.connector_id
  secrets            = each.value.secrets
  secrets_wo         = each.value.secrets_wo
  secrets_wo_version = each.value.secrets_wo_version
  space_id           = each.value.space_id
  timeouts           = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

