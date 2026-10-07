resource "aws_lambda_function" "code_unsigned" {
  function_name = "example"
  handler       = "index.handler"
  runtime       = "python3.12"
  role          = "arn:aws:iam::123456789012:role/example"
  filename      = "function.zip"
}
