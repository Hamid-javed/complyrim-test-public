resource "aws_lambda_function" "code_signed" {
  function_name          = "example"
  handler                = "index.handler"
  runtime                = "python3.12"
  role                   = "arn:aws:iam::123456789012:role/example"
  filename               = "function.zip"
  code_signing_config_arn = "arn:aws:lambda:us-east-1:123456789012:code-signing-config:csc-1234567890abcdef0"
}
