resource "aws_alb_target_group" "workshop_tg" {
  name     = "target-group-${terraform.workspace}"
  port     = "443"
  protocol = "HTTPS"
  vpc_id   = "vpc-04836362"

  health_check {
    interval            = "30"
    port                = "443"
    protocol            = "HTTPS"
    timeout             = "10"
    healthy_threshold   = "2"
    unhealthy_threshold = "2"
    matcher             = "200"
  }

  tags = {
    Name    = "target_group_${terraform.workspace}"
    service = "workshop"
  }
}
