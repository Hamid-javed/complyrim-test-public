resource "aws_ecr_repository" "mutable" {
  name                 = "example"
  image_tag_mutability = "MUTABLE"
}
