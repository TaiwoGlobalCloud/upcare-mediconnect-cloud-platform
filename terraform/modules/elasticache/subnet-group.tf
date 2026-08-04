#############################################
# ElastiCache Subnet Group
#############################################

resource "aws_elasticache_subnet_group" "this" {

  name = "${local.name_prefix}-redis"

  subnet_ids = var.private_subnet_ids

  description = "Redis subnet group for UpCare MediConnect"

}