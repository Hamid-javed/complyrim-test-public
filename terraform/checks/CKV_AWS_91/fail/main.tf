resource "aws_lb" "unlogged" {
  name               = "example"
  load_balancer_type = "application"

  access_logs {
    bucket  = "example-lb-logs"
    enabled = false
  }
}
