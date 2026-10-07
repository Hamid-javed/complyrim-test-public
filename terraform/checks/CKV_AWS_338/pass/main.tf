resource "aws_cloudwatch_log_group" "retained" {
  name              = "example"
  retention_in_days = 365
}
