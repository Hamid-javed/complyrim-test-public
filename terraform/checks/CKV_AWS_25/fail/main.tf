resource "aws_security_group" "open_rdp" {
  name        = "open-rdp"
  description = "open rdp"

  ingress {
    description = "rdp from anywhere"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
