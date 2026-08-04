#############################################
# Target Group
#############################################

resource "aws_lb_target_group" "this" {

  name     = "${local.name_prefix}-tg"
  port     = 80
  protocol = "HTTP"

  vpc_id = var.vpc_id

  health_check {

    enabled  = true
    path     = "/"
    protocol = "HTTP"

  }

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-tg"
    }
  )

}