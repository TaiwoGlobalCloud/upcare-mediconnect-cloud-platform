#############################################
# Application Load Balancer
#############################################

resource "aws_lb" "this" {

  name               = "${local.name_prefix}-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = var.security_group_ids
  subnets         = var.public_subnet_ids

  #############################################
  # Security Hardening
  #############################################

  enable_deletion_protection = true

  drop_invalid_header_fields = true

  access_logs {
    bucket  = var.access_logs_bucket
    enabled = true
    prefix  = "alb"
  }

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-alb"
    }
  )

}