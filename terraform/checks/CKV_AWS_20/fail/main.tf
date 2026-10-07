resource "aws_s3_bucket" "public_read" {
  bucket = "example-bucket-public-read"
}

resource "aws_s3_bucket_acl" "public_read" {
  bucket = aws_s3_bucket.public_read.id
  acl    = "public-read"
}
