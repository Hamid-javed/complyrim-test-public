resource "aws_sfn_state_machine" "good" {
  name     = "example-state-machine"
  role_arn = "arn:aws:iam::123456789012:role/example-role"
  definition = jsonencode({
    Comment = "example"
    StartAt = "pass"
    States = {
      pass = {
        Type = "Pass"
        End  = true
      }
    }
  })

  logging_configuration {
    include_execution_data = true
    level                  = "ALL"
  }
}
