resource "aws_lb" "logged" {
  name               = "example"
  load_balancer_type = "application"

  access_logs {
    bucket  = "example-lb-logs"
    enabled = true
  }
}
