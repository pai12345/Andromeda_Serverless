# create role for lambda
resource "aws_iam_role" "execution_role" {
  name               = var.execution_role_name
  assume_role_policy = var.policy
}

# fetch ECR Container repo
data "aws_ecr_repository" "registry" {
  name = var.registry_name
}

# fetch ECR Container image
data "aws_ecr_image" "image" {
  repository_name = data.aws_ecr_repository.registry.name
  image_tag       = var.image_tag
}

# deploy lambda
resource "aws_lambda_function" "deploy_lambda" {
  description   = var.lambda_description
  function_name = var.function_name
  role          = aws_iam_role.execution_role.arn
  handler       = var.handler
  runtime       = var.runtime
  memory_size   = var.memory_size
  package_type  = var.package_type
  tags          = var.tags
  timeout       = var.timeout
  image_uri     = "${data.aws_ecr_repository.registry.repository_url}@${data.aws_ecr_image.image.image_digest}"
}