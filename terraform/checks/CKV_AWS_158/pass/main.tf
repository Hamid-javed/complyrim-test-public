resource "aws_kms_key" "log_key" {
  description = "example"
}

resource "aws_cloudwatch_log_group" "encrypted" {
  name       = "example"
  kms_key_id = aws_kms_key.log_key.arn
}
