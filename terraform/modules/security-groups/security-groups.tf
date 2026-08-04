#############################################
# Application Security Group
#############################################

resource "aws_security_group" "application" {

  name        = "${local.name_prefix}-application-sg"
  description = "Application Security Group"
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-application-sg"
    }
  )
}

#############################################
# Database Security Group
#############################################

resource "aws_security_group" "database" {

  name        = "${local.name_prefix}-database-sg"
  description = "Database Security Group"
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-database-sg"
    }
  )
}

#############################################
# Load Balancer Security Group
#############################################

resource "aws_security_group" "alb" {

  name        = "${local.name_prefix}-alb-sg"
  description = "Application Load Balancer Security Group"
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-alb-sg"
    }
  )
}