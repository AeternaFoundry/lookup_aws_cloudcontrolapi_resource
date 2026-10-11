variable "cloudcontrolapi_resource_lookup" {
  description = <<EOT
Map of cloudcontrolapi_resource_lookup, attributes below
Required:
    - identifier
    - type_name
Optional:
    - region
    - role_arn
    - type_version_id
EOT

  type = map(object({
    identifier      = string
    type_name       = string
    region          = optional(string)
    role_arn        = optional(string)
    type_version_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudcontrolapi_resource_lookup : (
        can(regex("[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}", v.type_name))
      )
    ])
    error_message = "must be three alphanumeric sections separated by double colons (::)"
  }
}

