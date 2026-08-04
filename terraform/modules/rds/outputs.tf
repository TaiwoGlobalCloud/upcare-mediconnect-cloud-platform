#############################################
# RDS Outputs
#############################################

output "db_instance_id" {
  description = "RDS Instance ID."
  value       = aws_db_instance.this.id
}

output "db_endpoint" {
  description = "Database endpoint."
  value       = aws_db_instance.this.endpoint
}

output "db_arn" {
  description = "Database ARN."
  value       = aws_db_instance.this.arn
}