resource "aws_iam_policy" "good_290" {
  name = "example-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:PutObject"
        Resource = "arn:aws:s3:::example-bucket/*"
      }
    ]
  })
}
