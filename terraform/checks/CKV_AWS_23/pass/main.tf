resource "aws_security_group" "described" {
  name        = "described"
  description = "allows inbound https from the corporate CIDR"

  ingress {
    description = "https from corp"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
