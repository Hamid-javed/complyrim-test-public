resource "aws_iam_policy" "bad" {
  name = "example-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "iam:PutRolePolicy"
        Resource = "*"
      }
    ]
  })
}
