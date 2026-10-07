resource "aws_sns_topic_policy" "bad" {
  arn = "arn:aws:sns:us-east-1:123456789012:example-topic"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "sns:Publish"
        Resource  = "arn:aws:sns:us-east-1:123456789012:example-topic"
      }
    ]
  })
}
