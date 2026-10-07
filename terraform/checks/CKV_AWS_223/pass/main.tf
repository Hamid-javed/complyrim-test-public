resource "aws_ecs_cluster" "good" {
  name = "example-cluster"

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }
}
