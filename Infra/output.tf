#===================Module Output for deploying lambda layer=====================#
output "output_generate_deploy_layer" {
  value       = module.generate_deploy_layer
  sensitive   = false
  description = "Output for Module - deploying lambda layer"
}

#===================Module Output for deploying lambda function=====================#
output "output_generate_deploy_lambda" {
  value       = module.generate_deploy_lambda
  sensitive   = false
  description = "Output for Module - deploying lambda function"
}

