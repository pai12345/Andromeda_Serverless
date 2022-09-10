# add function url
resource "aws_lambda_function_url" "create_url" {
  function_name      = var.function_name
  qualifier          = var.qualifier
  authorization_type = var.authorization_type
  cors {
    allow_origins = ["*"]
    allow_methods = ["*"]
  }
}