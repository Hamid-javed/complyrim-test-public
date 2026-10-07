resource "aws_lambda_function" "unencrypted" {
  function_name = "example"
  handler       = "index.handler"
  runtime       = "nodejs20.x"
  role          = "arn:aws:iam::123456789012:role/lambda-role"
  filename      = "function.zip"

  environment {
    variables = {
      SECRET = "value"
    }
  }
}
