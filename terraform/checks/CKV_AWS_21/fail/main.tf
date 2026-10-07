resource "aws_s3_bucket" "unversioned" {
  bucket = "example-bucket-unversioned"
}

resource "aws_s3_bucket_versioning" "unversioned" {
  bucket = aws_s3_bucket.unversioned.id

  versioning_configuration {
    status = "Suspended"
  }
}
