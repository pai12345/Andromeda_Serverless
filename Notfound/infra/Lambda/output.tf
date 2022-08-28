#===================Module Output for deploying lambda function=====================#
output "output_generate_deploy_lambda" {
  value       = module.generate_deploy_lambda
  sensitive   = false
  description = "Output for Module - deploying lambda function"
}