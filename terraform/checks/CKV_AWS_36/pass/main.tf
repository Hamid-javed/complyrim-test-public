resource "aws_cloudtrail" "validated" {
  name                          = "example-trail"
  s3_bucket_name                = "example-trail-bucket"
  enable_log_file_validation    = true
}
