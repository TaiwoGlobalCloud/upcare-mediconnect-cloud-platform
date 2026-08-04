#############################################
# RDS DB Subnet Group
#############################################

resource "aws_db_subnet_group" "this" {

  name = "${local.name_prefix}-db-subnet-group"

  subnet_ids = var.private_subnet_ids

  description = "Database subnet group for UpCare MediConnect"

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-db-subnet-group"
    }
  )

}