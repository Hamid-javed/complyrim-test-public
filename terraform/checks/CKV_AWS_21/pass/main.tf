resource "aws_s3_bucket" "versioned" {
  bucket = "example-bucket-versioned"
}

resource "aws_s3_bucket_versioning" "versioned" {
  bucket = aws_s3_bucket.versioned.id

  versioning_configuration {
    status = "Enabled"
  }
}
