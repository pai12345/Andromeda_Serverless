# create role for lambda
resource "aws_iam_role" "execution_role" {
  name               = var.execution_role_name
  assume_role_policy = var.policy
}

# deploy lambda
resource "aws_lambda_function" "deploy_lambda" {
  description      = var.lambda_description
  filename         = var.zip_file
  function_name    = var.function_name
  role             = aws_iam_role.execution_role.arn
  handler          = var.handler_name
  source_code_hash = filebase64sha256(var.zip_file)
  runtime          = var.runtime
  memory_size      = var.memory_size
  package_type     = var.package_type
  tags             = var.tags
  timeout          = var.timeout
}