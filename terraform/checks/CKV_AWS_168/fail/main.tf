resource "aws_sqs_queue" "bad" {
  name = "example-queue"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "sqs:SendMessage"
        Resource  = "arn:aws:sqs:us-east-1:123456789012:example-queue"
      }
    ]
  })
}
