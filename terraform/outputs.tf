#############################################
# Terraform Outputs
# UpCare MediConnect Cloud Platform
#############################################

output "aws_account_id" {
  description = "AWS Account ID."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "AWS Region."
  value       = var.aws_region
}