resource "aws_cloudtrail" "encrypted" {
  name                          = "example-trail"
  s3_bucket_name                = "example-trail-bucket"
  kms_key_id                    = "arn:aws:kms:us-east-1:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab"
}
