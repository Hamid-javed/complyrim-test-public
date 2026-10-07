resource "aws_cloudtrail" "single_region" {
  name                   = "example-trail"
  s3_bucket_name         = "example-trail-bucket"
  is_multi_region_trail  = false
}
