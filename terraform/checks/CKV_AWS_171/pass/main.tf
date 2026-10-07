resource "aws_emr_security_configuration" "good" {
  name = "example-security-config"

  configuration = <<EOF
{
  "EncryptionConfiguration": {
    "AtRestEncryptionConfiguration": {
      "S3EncryptionConfiguration": {
        "EncryptionMode": "SSE-KMS",
        "AwsKmsKey": "arn:aws:kms:us-east-1:123456789012:key/example-key"
      }
    }
  }
}
EOF
}
