output "cloudcontrolapi_resource_lookup_id" {
  description = "Map of id values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudcontrolapi_resource_lookup_identifier" {
  description = "Map of identifier values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "cloudcontrolapi_resource_lookup_properties" {
  description = "Map of properties values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "cloudcontrolapi_resource_lookup_region" {
  description = "Map of region values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudcontrolapi_resource_lookup_role_arn" {
  description = "Map of role_arn values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "cloudcontrolapi_resource_lookup_type_name" {
  description = "Map of type_name values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.type_name if v.type_name != null && length(v.type_name) > 0 }
}
output "cloudcontrolapi_resource_lookup_type_version_id" {
  description = "Map of type_version_id values across all cloudcontrolapi_resource_lookup, keyed the same as var.cloudcontrolapi_resource_lookup"
  value       = { for k, v in data.aws_cloudcontrolapi_resource.cloudcontrolapi_resource_lookup : k => v.type_version_id if v.type_version_id != null && length(v.type_version_id) > 0 }
}

