resource "aws_elasticsearch_domain" "logged" {
  domain_name = "example"

  log_publishing_options {
    cloudwatch_log_group_arn = "arn:aws:logs:us-east-1:123456789012:log-group:example"
    log_type                 = "AUDIT_LOGS"
    enabled                  = true
  }
}
