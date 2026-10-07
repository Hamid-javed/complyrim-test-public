resource "aws_appsync_graphql_api" "bad" {
  name                = "example-api"
  authentication_type = "API_KEY"
}
