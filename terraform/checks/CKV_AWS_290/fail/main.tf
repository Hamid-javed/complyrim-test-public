resource "aws_iam_policy" "bad_290" {
  name = "example-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:PutObject"
        Resource = "*"
      }
    ]
  })
}
