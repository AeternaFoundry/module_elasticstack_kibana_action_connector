output "kibana_action_connectors_id" {
  description = "Map of id values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_action_connectors_config" {
  description = "Map of config values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no config are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.config if v.config != null && length(v.config) > 0 }
}
output "kibana_action_connectors_connector_id" {
  description = "Map of connector_id values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no connector_id are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.connector_id if v.connector_id != null && length(v.connector_id) > 0 }
}
output "kibana_action_connectors_connector_type_id" {
  description = "Map of connector_type_id values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no connector_type_id are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.connector_type_id if v.connector_type_id != null && length(v.connector_type_id) > 0 }
}
output "kibana_action_connectors_is_deprecated" {
  description = "Map of is_deprecated values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no is_deprecated are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.is_deprecated if v.is_deprecated != null }
}
output "kibana_action_connectors_is_missing_secrets" {
  description = "Map of is_missing_secrets values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no is_missing_secrets are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.is_missing_secrets if v.is_missing_secrets != null }
}
output "kibana_action_connectors_is_preconfigured" {
  description = "Map of is_preconfigured values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no is_preconfigured are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.is_preconfigured if v.is_preconfigured != null }
}
output "kibana_action_connectors_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_action_connectors_name" {
  description = "Map of name values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_action_connectors_secrets" {
  description = "Map of secrets values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no secrets are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
  sensitive   = true
}
output "kibana_action_connectors_secrets_wo_version" {
  description = "Map of secrets_wo_version values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no secrets_wo_version are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.secrets_wo_version if v.secrets_wo_version != null && length(v.secrets_wo_version) > 0 }
}
output "kibana_action_connectors_space_id" {
  description = "Map of space_id values across all kibana_action_connectors, keyed the same as var.kibana_action_connectors except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_action_connector.kibana_action_connectors : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}

