resource "aws_alb_target_group" "web_active" {
  name     = "target-group-${terraform.workspace}"
  port     = "443"
  protocol = "HTTPS"
  vpc_id   = "vpc-04836362"
  # "${data.terraform_remote_state.network.vpc_id}"
  deregistration_delay = 30

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
