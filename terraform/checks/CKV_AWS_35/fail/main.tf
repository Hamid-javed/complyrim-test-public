resource "aws_cloudtrail" "unencrypted" {
  name            = "example-trail"
  s3_bucket_name  = "example-trail-bucket"
}
