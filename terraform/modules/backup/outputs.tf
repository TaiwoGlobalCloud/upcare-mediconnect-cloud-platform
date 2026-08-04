#############################################
# Backup Outputs
#############################################

output "backup_vault_name" {
  description = "AWS Backup Vault Name."
  value       = aws_backup_vault.this.name
}

output "backup_plan_id" {
  description = "AWS Backup Plan ID."
  value       = aws_backup_plan.this.id
}