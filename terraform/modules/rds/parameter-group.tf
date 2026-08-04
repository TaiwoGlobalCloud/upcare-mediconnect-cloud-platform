#############################################
# PostgreSQL Parameter Group
#############################################

resource "aws_db_parameter_group" "this" {

  name   = "${local.name_prefix}-postgres"
  family = "postgres17"

  description = "PostgreSQL parameter group"

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-postgres"
    }
  )

}