# create role for lambda
resource "aws_iam_role" "execution_role" {
  name               = var.execution_role_name
  assume_role_policy = var.policy
}

# deploy lambda
resource "aws_lambda_function" "deploy_lambda" {
  filename         = var.zip_file
  description      = var.lambda_description
  function_name    = var.function_name
  role             = aws_iam_role.execution_role.arn
  handler          = var.handler
  runtime          = var.runtime
  memory_size      = var.memory_size
  package_type     = var.package_type
  tags             = var.tags
  timeout          = var.timeout
  source_code_hash = filebase64sha256(var.zip_file)
  /* layers                         = var.layers */
  reserved_concurrent_executions = var.reserved_concurrent_executions
  publish                        = var.publish
}
