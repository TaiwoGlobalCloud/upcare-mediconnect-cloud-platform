#############################################
# CloudWatch Outputs
#############################################

output "application_log_group_name" {
  description = "Application CloudWatch Log Group."

  value = aws_cloudwatch_log_group.application.name
}

output "application_log_group_arn" {
  description = "Application CloudWatch Log Group ARN."

  value = aws_cloudwatch_log_group.application.arn
}