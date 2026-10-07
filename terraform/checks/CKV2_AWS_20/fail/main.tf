resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "plaintext" {
  load_balancer_arn = aws_lb.example.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/example/1234567890abcdef"
  }
}
