resource "aws_glacier_vault" "bad" {
  name = "example-vault"

  access_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "glacier:UploadArchive",
      "Resource": "arn:aws:glacier:us-east-1:123456789012:vaults/example-vault"
    }
  ]
}
POLICY
}
