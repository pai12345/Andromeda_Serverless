/* #===================Module Output for deploying lambda layer=====================#
output "output_generate_deploy_layer" {
  value       = module.generate_deploy_layer
  sensitive   = false
  description = "Output for Module - deploying lambda layer"
} */

#===================Module Output for deploying lambda function=====================#
output "output_generate_deploy_lambda" {
  value       = module.generate_deploy_lambda
  sensitive   = false
  description = "Output for Module - deploying lambda function"
}

#===================Module Output for creating lambda alias=====================#
output "output_generate_create_lambda_alias" {
  value       = module.generate_create_lambda_alias
  sensitive   = false
  description = "Output for Module - creating lambda alias"
}

#===================Module Output for adding function url to lambda=====================#
output "output_ggenerate_create_function_url" {
  value       = module.generate_create_function_url
  sensitive   = false
  description = "Output for Module - adding function url to lambda"
}

#===================Module Output for allowing access to api gateway=====================#
output "output_generate_allow_apigateway" {
  value       = module.generate_allow_apigateway
  sensitive   = false
  description = "Output for Module - allowing access to api gateway"
}