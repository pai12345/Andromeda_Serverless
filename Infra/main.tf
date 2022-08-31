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