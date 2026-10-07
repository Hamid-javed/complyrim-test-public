resource "aws_eks_cluster" "secrets_unencrypted" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:role/example-eks"

  vpc_config {
    subnet_ids = ["subnet-0123456789abcdef0"]
  }
}
