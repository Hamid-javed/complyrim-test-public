resource "aws_security_group" "open_ssh" {
  name        = "open-ssh"
  description = "open ssh"

  ingress {
    description = "ssh from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
