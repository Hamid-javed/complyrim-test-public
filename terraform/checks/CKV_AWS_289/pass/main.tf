resource "aws_iam_policy" "good" {
  name = "example-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "iam:PutRolePolicy"
        Resource = "arn:aws:iam::123456789012:role/example-role"
      }
    ]
  })
}
