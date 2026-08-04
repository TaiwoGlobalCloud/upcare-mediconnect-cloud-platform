#############################################
# Security Hub Outputs
#############################################

output "security_hub_enabled" {
  description = "Security Hub enabled."
  value       = aws_securityhub_account.this.id
}