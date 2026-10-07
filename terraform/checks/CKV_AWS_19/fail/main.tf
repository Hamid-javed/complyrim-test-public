resource "aws_s3_bucket" "b" {
  bucket = "example-bucket"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "b" {
  bucket = aws_s3_bucket.b.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "none"
    }
  }
}
