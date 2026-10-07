resource "aws_cloudtrail" "unvalidated" {
  name                       = "example-trail"
  s3_bucket_name             = "example-trail-bucket"
  enable_log_file_validation = false
}
