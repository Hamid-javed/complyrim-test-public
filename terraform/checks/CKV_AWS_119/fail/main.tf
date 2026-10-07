resource "aws_dynamodb_table" "not_cmk_encrypted" {
  name         = "example"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
