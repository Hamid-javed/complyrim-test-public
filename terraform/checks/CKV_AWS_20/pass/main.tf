resource "aws_s3_bucket" "private" {
  bucket = "example-bucket-private"
}

resource "aws_s3_bucket_acl" "private" {
  bucket = aws_s3_bucket.private.id
  acl    = "private"
}
