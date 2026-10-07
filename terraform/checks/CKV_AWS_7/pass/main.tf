resource "aws_kms_key" "rotated" {
  description             = "example key"
  enable_key_rotation      = true
}
