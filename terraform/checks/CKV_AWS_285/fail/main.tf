resource "aws_sfn_state_machine" "bad" {
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
}
