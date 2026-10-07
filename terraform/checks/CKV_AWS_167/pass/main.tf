resource "aws_glacier_vault" "good" {
  name = "example-vault"

  access_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::123456789012:root"
      },
      "Action": "glacier:UploadArchive",
      "Resource": "arn:aws:glacier:us-east-1:123456789012:vaults/example-vault"
    }
  ]
}
POLICY
}
