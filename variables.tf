variable "kibana_action_connectors" {
  description = <<EOT
Map of kibana_action_connectors, attributes below
Required:
    - connector_type_id
    - name
Optional:
    - config
    - connector_id
    - secrets
    - secrets_wo
    - secrets_wo_version
    - space_id
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    connector_type_id  = string
    name               = string
    config             = optional(string)
    connector_id       = optional(string)
    secrets            = optional(string)
    secrets_wo         = optional(string)
    secrets_wo_version = optional(string)
    space_id           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

