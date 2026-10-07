resource "aws_ecr_repository" "immutable" {
  name                 = "example"
  image_tag_mutability = "IMMUTABLE"
}
