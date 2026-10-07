resource "aws_security_group" "restricted_rdp" {
  name        = "restricted-rdp"
  description = "restricted rdp"

  ingress {
    description = "rdp from corp"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
