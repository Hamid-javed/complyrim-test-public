resource "aws_cloudwatch_log_group" "trail_logs" {
  name = "example-trail-logs"
}

resource "aws_iam_role" "cloudtrail_cloudwatch" {
  name = "example-cloudtrail-cloudwatch-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "cloudtrail.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_cloudtrail" "integrated" {
  name                          = "example"
  s3_bucket_name                = "example-cloudtrail-bucket"
  cloud_watch_logs_group_arn    = "${aws_cloudwatch_log_group.trail_logs.arn}:*"
  cloud_watch_logs_role_arn     = aws_iam_role.cloudtrail_cloudwatch.arn
}
