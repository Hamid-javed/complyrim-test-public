resource "aws_s3_bucket" "aes_encrypted" {
  bucket = "example-bucket-aes"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "aes_encrypted" {
  bucket = aws_s3_bucket.aes_encrypted.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
