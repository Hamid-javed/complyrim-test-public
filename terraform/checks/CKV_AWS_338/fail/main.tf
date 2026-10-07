resource "aws_cloudwatch_log_group" "not_retained" {
  name              = "example"
  retention_in_days = 30
}
