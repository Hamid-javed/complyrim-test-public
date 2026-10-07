provider "aws" { region = "us-east-1" }

resource "aws_security_group" "internal" {
  name        = "internal"
  description = "Internal only"
  vpc_id      = "vpc-0123456789abcdef0"
  ingress {
    description = "https from corp"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
}

resource "aws_kms_key" "app" {
  description         = "app key"
  enable_key_rotation = true
}

resource "aws_s3_bucket" "data" {
  bucket = "acme-customer-data-good"
}
resource "aws_s3_bucket_public_access_block" "data" {
  bucket                  = aws_s3_bucket.data.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_server_side_encryption_configuration" "data" {
  bucket = aws_s3_bucket.data.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.app.arn
    }
  }
}
resource "aws_s3_bucket_versioning" "data" {
  bucket = aws_s3_bucket.data.id
  versioning_configuration { status = "Enabled" }
}

resource "aws_ebs_volume" "scratch" {
  availability_zone = "us-east-1a"
  size              = 40
  encrypted         = true
  kms_key_id        = aws_kms_key.app.arn
}

resource "aws_iam_policy" "scoped" {
  name = "scoped"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{ Effect = "Allow", Action = ["s3:GetObject"], Resource = "arn:aws:s3:::acme-customer-data-good/*" }]
  })
}

resource "aws_cloudwatch_log_group" "app" {
  name              = "/acme/app"
  retention_in_days = 365
  kms_key_id        = aws_kms_key.app.arn
}

resource "aws_sns_topic" "alerts" {
  name              = "alerts"
  kms_master_key_id = aws_kms_key.app.arn
}

resource "aws_sqs_queue" "jobs" {
  name              = "jobs"
  kms_master_key_id = aws_kms_key.app.arn
}
