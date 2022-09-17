#===================Output for Creating Alias=====================#
output "output_create_alias" {
  value       = aws_lambda_alias.create_alias
  sensitive   = false
  description = "Output for Creating Lambda Alias"
}