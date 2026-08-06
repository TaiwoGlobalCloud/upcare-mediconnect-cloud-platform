#############################################
# ALB Ingress HTTP
#############################################

#checkov:skip=CKV_AWS_260: Port 80 is intentionally exposed to redirect HTTP traffic to HTTPS via the Application Load Balancer.

resource "aws_vpc_security_group_ingress_rule" "alb_http" {

  security_group_id = aws_security_group.alb.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 80
  to_port   = 80

  ip_protocol = "tcp"

  description = "Allow HTTP for HTTPS redirection"
}

#############################################
# ALB Ingress HTTPS
#############################################

resource "aws_vpc_security_group_ingress_rule" "alb_https" {

  security_group_id = aws_security_group.alb.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 443
  to_port   = 443

  ip_protocol = "tcp"

  description = "Allow HTTPS"
}

#############################################
# ALB Egress
#############################################

resource "aws_vpc_security_group_egress_rule" "alb_outbound" {

  security_group_id = aws_security_group.alb.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow outbound traffic"
}