#===================Output for adding function url=====================#
output "output_create_url" {
  value       = aws_lambda_function_url.create_url
  sensitive   = false
  description = "Output for Adding function URL to Lambda"
}