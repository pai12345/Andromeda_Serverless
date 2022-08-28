# create role for lambda
resource "aws_iam_role" "iam_for_lambda" {
  name               = "iam_for_lambda"
  assume_role_policy = var.policy
}

# deploy lambda
resource "aws_lambda_function" "create_lambda" {
  filename         = "${path.module}/handler.zip"
  function_name    = "notfound"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "index.notfound"
  source_code_hash = filebase64sha256("${path.module}/handler.zip")
  runtime          = "nodejs14.x"
}