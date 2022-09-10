# allow lambda api gateway permission
resource "aws_lambda_permission" "allow_apigateway" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  /* source_arn    = "arn:aws:events:eu-west-1:111122223333:rule/RunDaily" */
  qualifier = var.qualifier
}