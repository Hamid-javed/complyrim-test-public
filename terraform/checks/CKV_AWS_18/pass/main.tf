resource "aws_s3_bucket" "source" {
  bucket = "example-source"
}

resource "aws_s3_bucket" "target" {
  bucket = "example-target"
}

resource "aws_s3_bucket_logging" "logging" {
  bucket        = aws_s3_bucket.source.id
  target_bucket = aws_s3_bucket.target.id
  target_prefix = "log/"
}
