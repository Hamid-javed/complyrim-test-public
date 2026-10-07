resource "aws_eks_cluster" "secrets_encrypted" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:role/example-eks"

  vpc_config {
    subnet_ids = ["subnet-0123456789abcdef0"]
  }

  encryption_config {
    resources = ["secrets"]
    provider {
      key_arn = "arn:aws:kms:us-east-1:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    }
  }
}
