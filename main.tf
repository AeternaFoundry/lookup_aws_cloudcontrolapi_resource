data "aws_cloudcontrolapi_resource" "cloudcontrolapi_resource_lookup" {
  for_each = var.cloudcontrolapi_resource_lookup

  identifier      = each.value.identifier
  type_name       = each.value.type_name
  region          = each.value.region
  role_arn        = each.value.role_arn
  type_version_id = each.value.type_version_id
}

