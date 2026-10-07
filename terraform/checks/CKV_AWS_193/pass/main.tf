resource "aws_appsync_graphql_api" "good" {
  name                = "example-api"
  authentication_type = "API_KEY"

  log_config {
    cloudwatch_logs_role_arn = "arn:aws:iam::123456789012:role/appsync-logging"
    field_log_level          = "ALL"
  }
}
