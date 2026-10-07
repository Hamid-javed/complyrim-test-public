resource "aws_kms_key" "not_rotated" {
  description         = "example key"
  enable_key_rotation = false
}
