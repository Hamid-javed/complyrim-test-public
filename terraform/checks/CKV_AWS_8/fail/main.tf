resource "aws_instance" "unencrypted" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = false
  }
}
