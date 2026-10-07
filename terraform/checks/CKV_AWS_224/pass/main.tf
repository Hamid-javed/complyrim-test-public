resource "aws_ecs_cluster" "good" {
  name = "example-cluster"

  configuration {
    execute_command_configuration {
      logging    = "OVERRIDE"
      kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/example-key"

      log_configuration {
        cloud_watch_encryption_enabled = true
      }
    }
  }
}
