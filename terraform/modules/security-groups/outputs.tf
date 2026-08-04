#############################################
# Security Groups Outputs
#############################################

output "application_security_group_id" {
  description = "Application Security Group ID"
  value       = aws_security_group.application.id
}

output "database_security_group_id" {
  description = "Database Security Group ID"
  value       = aws_security_group.database.id
}

output "alb_security_group_id" {
  description = "ALB Security Group ID"
  value       = aws_security_group.alb.id
}