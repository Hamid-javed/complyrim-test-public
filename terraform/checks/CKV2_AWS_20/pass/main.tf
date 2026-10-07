resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "redirect" {
  load_balancer_arn = aws_lb.example.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
