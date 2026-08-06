#############################################
# Database Secret
#############################################

resource "aws_secretsmanager_secret" "database" {

  name = "${local.name_prefix}-database"

  recovery_window_in_days = 7

  #############################################
  # Customer Managed KMS Key
  #############################################

  kms_key_id = var.kms_key_arn

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-database"
    }
  )

}