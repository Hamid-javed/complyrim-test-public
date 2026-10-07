resource "aws_lb_listener" "http" {
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/example/50dc6c495c0c9188"
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/example/73e2d6bc24d8a067"
  }
}
