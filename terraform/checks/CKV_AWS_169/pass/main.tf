resource "aws_sns_topic_policy" "good" {
  arn = "arn:aws:sns:us-east-1:123456789012:example-topic"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::123456789012:root"
        }
        Action   = "sns:Publish"
        Resource = "arn:aws:sns:us-east-1:123456789012:example-topic"
      }
    ]
  })
}
