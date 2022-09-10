locals {
  function_name = module.generate_deploy_lambda.output_deploy_lambda.function_name
  qualifier     = module.generate_create_lambda_alias.output_create_alias.name
}

/* # module to deploy lambda layer
module "generate_deploy_layer" {
  source         = "./modules/CreateLayer/"
  layer_zip_file = "${path.module}/../App/Dats/layer/${var.layer_zip_file}.zip"
} */

# module to deploy lambda function
module "generate_deploy_lambda" {
  source        = "./modules/Deploy/"
  policy        = file("${path.module}/policy/lambda.json")
  handler       = "${var.file_name}.${var.handler_name}"
  function_name = var.handler_name
  zip_file      = "${path.module}/../App/Dats/${var.file_name}.zip"
  /* layers         = [module.generate_deploy_layer.output_create_layer.arn] */
}

# module to create lambda alias
module "generate_create_lambda_alias" {
  source        = "./modules/CreateAlias/"
  function_name = module.generate_deploy_lambda.output_deploy_lambda.arn
}

# module to add function to function
module "generate_create_function_url" {
  source        = "./modules/AddFunctionURL/"
  function_name = local.function_name
  qualifier     = local.qualifier
}

# module to allow api gateway access to lambda
module "generate_allow_apigateway" {
  source        = "./modules/APIGateway/"
  function_name = local.function_name
  qualifier     = local.qualifier
}
