resource "aws_security_group" "restricted_ssh" {
  name        = "restricted-ssh"
  description = "restricted ssh"

  ingress {
    description = "ssh from corp"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
