resource "aws_cloudtrail" "bad" {
  name            = "example-trail"
  s3_bucket_name  = "example-cloudtrail-bucket"
  enable_logging  = false
}
