resource "aws_waf_web_acl" "good" {
  name        = "example-acl"
  metric_name = "exampleAcl"

  default_action {
    type = "ALLOW"
  }

  logging_configuration {
    log_destination = "arn:aws:firehose:us-east-1:123456789012:deliverystream/example"
  }
}
