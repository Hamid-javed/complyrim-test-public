resource "aws_s3_bucket" "kms_encrypted" {
  bucket = "example-bucket-kms"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "kms_encrypted" {
  bucket = aws_s3_bucket.kms_encrypted.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
  }
}
