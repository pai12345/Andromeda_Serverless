#===================Output for allowing apigateway access=====================#
output "output_allow_apigateway" {
  value       = aws_lambda_permission.allow_apigateway
  sensitive   = false
  description = "Output for allowing apigateway access"
}