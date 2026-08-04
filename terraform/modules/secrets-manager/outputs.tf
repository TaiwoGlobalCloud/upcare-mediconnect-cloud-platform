#############################################
# Secrets Manager Outputs
#############################################

output "secret_arn" {
  description = "Database Secret ARN."
  value       = aws_secretsmanager_secret.database.arn
}

output "secret_name" {
  description = "Database Secret Name."
  value       = aws_secretsmanager_secret.database.name
}