#############################################
# AWS Backup Vault
#############################################

resource "aws_backup_vault" "this" {

  name = "${local.name_prefix}-${var.backup_vault_name}"

  kms_key_arn = var.kms_key_arn

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-${var.backup_vault_name}"
    }
  )

}