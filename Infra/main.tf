# module to deploy lambda function
module "generate_deploy_lambda" {
  source        = "./modules/Deploy/"
  policy        = file("${path.module}/policy/lambda.json")
  handler       = "${var.file_name}.${var.handler_name}"
  function_name = var.handler_name
  zip_file      = "${path.module}/../App/Dats/${var.file_name}.zip"
}