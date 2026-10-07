resource "aws_waf_web_acl" "bad" {
  name        = "example-acl"
  metric_name = "exampleAcl"

  default_action {
    type = "ALLOW"
  }
}
