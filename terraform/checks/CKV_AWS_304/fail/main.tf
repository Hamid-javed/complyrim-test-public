resource "aws_secretsmanager_secret" "example" {
  name = "example"
}

resource "aws_secretsmanager_secret_rotation" "not_rotated" {
  secret_id           = aws_secretsmanager_secret.example.id
  rotation_lambda_arn = "arn:aws:lambda:us-east-1:123456789012:function:rotate"

  rotation_rules {
    automatically_after_days = 120
  }
}
