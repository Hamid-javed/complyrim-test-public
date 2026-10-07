resource "aws_ecr_repository" "unscanned" {
  name = "example"

  image_scanning_configuration {
    scan_on_push = false
  }
}
