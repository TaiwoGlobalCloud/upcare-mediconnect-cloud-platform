#############################################
# Database Secret
#############################################

resource "aws_secretsmanager_secret" "database" {

  name = "${local.name_prefix}-database"

  recovery_window_in_days = 7

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-database"
    }
  )

}