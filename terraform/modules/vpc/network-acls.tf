#############################################
# Network ACL
#############################################

resource "aws_network_acl" "this" {

  vpc_id = aws_vpc.this.id

  subnet_ids = concat(
    values(aws_subnet.public)[*].id,
    values(aws_subnet.private)[*].id
  )

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-nacl"
    }
  )
}

#############################################
# Inbound Rules
#############################################

resource "aws_network_acl_rule" "ingress_allow_all" {

  network_acl_id = aws_network_acl.this.id

  rule_number = 100

  protocol = "-1"

  rule_action = "allow"

  cidr_block = "0.0.0.0/0"

  from_port = 0

  to_port = 0

  egress = false
}

#############################################
# Outbound Rules
#############################################

resource "aws_network_acl_rule" "egress_allow_all" {

  network_acl_id = aws_network_acl.this.id

  rule_number = 100

  protocol = "-1"

  rule_action = "allow"

  cidr_block = "0.0.0.0/0"

  from_port = 0

  to_port = 0

  egress = true
}