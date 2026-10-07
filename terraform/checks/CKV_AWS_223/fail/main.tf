resource "aws_ecs_cluster" "bad" {
  name = "example-cluster"

  configuration {
    execute_command_configuration {
      logging = "NONE"
    }
  }
}
