variable "name" { type = string }
resource "aws_s3_bucket" "this" {
  bucket = var.name
}
resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "public-read-write"
}
