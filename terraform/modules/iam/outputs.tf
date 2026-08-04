#############################################
# IAM Outputs
#############################################

output "ec2_role_name" {
  description = "EC2 IAM Role Name."
  value       = aws_iam_role.ec2.name
}

output "ec2_role_arn" {
  description = "EC2 IAM Role ARN."
  value       = aws_iam_role.ec2.arn
}