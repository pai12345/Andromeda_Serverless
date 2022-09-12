# allow lambda api gateway permission
resource "aws_lambda_permission" "allow_apigateway" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:apigateway:us-east-1::/restapis/amo7j8kbgg/*/*"
  qualifier = var.qualifier
}