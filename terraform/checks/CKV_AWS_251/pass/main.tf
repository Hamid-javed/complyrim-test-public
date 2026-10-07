resource "aws_cloudtrail" "good" {
  name                          = "example-trail"
  s3_bucket_name                = "example-cloudtrail-bucket"
  enable_logging                = true
}
