#############################################
# AWS Backup Plan
#############################################

resource "aws_backup_plan" "this" {

  name = "${local.name_prefix}-${var.backup_plan_name}"

  rule {

    rule_name = "daily-backup"

    target_vault_name = aws_backup_vault.this.name

    schedule = "cron(0 5 * * ? *)"

    lifecycle {
      delete_after = 30
    }

  }

}