#===================Output for Execution role for lambda function=====================#
output "output_execution_role" {
  value       = aws_iam_role.execution_role
  sensitive   = false
  description = "Output for execution role for Lambda function"
}

#===================Output for fetching ECR Container repo=======================#
output "output_registry" {
  value       = data.aws_ecr_repository.registry
  sensitive   = false
  description = "Output for fetching ECR Container repo"
}

#===================Output for fetching ECR Container image=======================#
output "output_image" {
  value       = data.aws_ecr_image.image
  sensitive   = false
  description = "Output for fetching ECR Container image"
}

#===================Output for Deploying lambda function=====================#
output "output_deploy_lambda" {
  value       = aws_lambda_function.deploy_lambda
  sensitive   = false
  description = "Output for deploying Lambda function"
}