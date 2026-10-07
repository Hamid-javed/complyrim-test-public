resource "aws_instance" "imdsv1" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t3.micro"

  metadata_options {
    http_tokens = "optional"
  }
}
