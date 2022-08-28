#===================Output for Deploying lambda function=====================#
output "output_deploy_lambda" {
  value       = aws_lambda_function.deploy_lambda
  sensitive   = false
  description = "Output for deploying Lambda function"
}

#===================Output for Execution role for lambda function=====================#
output "output_execution_role" {
  value       = aws_iam_role.execution_role
  sensitive   = false
  description = "Output for execution role for Lambda function"
}