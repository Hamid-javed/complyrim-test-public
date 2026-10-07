resource "aws_kms_key" "lambda_key" {
  description = "example"
}

resource "aws_lambda_function" "encrypted" {
  function_name = "example"
  handler       = "index.handler"
  runtime       = "nodejs20.x"
  role          = "arn:aws:iam::123456789012:role/lambda-role"
  filename      = "function.zip"
  kms_key_arn   = aws_kms_key.lambda_key.arn

  environment {
    variables = {
      SECRET = "value"
    }
  }
}
