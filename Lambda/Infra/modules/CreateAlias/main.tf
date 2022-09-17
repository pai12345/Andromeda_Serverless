# create lambda alias
resource "aws_lambda_alias" "create_alias" {
  name             = var.alias_name
  description      = var.alias_description
  function_name    = var.function_name
  function_version = var.function_version
}