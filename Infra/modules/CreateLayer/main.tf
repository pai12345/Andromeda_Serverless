# deploy lambda layer
resource "aws_lambda_layer_version" "create_layer" {
  filename                 = var.layer_zip_file
  description              = var.description
  compatible_architectures = var.compatible_architectures
  layer_name               = var.layer_name
  skip_destroy             = var.skip_destroy
  source_code_hash         = filebase64sha256(var.layer_zip_file)
  compatible_runtimes      = var.compatible_runtimes
}