#===================Output for Creating Lambda Layer=====================#
output "output_create_layer" {
  value       = aws_lambda_layer_version.create_layer
  sensitive   = false
  description = "Output for Creating Lambda Layer"
}