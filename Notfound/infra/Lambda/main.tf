# module to deploy lambda function
module "generate_deploy_lambda" {
  source = "./modules/Deploy/"
  policy = file("${path.module}/policy/lambda.json")
}