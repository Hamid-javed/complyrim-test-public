resource "aws_sqs_queue" "good" {
  name = "example-queue"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::123456789012:root"
        }
        Action   = "sqs:SendMessage"
        Resource = "arn:aws:sqs:us-east-1:123456789012:example-queue"
      }
    ]
  })
}
