#===================Output for Deploying lambda function=====================#
output "output_aws_lambda_function" {
  value       = aws_lambda_function.create_lambda
  sensitive   = false
  description = "Output for deploying Lambda function"
}