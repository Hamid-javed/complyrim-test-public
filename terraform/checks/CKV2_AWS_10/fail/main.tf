resource "aws_cloudtrail" "not_integrated" {
  name            = "example"
  s3_bucket_name  = "example-cloudtrail-bucket"
}
