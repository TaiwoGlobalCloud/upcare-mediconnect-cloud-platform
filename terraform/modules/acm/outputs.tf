#############################################
# ACM Outputs
#############################################

output "certificate_arn" {
  description = "ACM Certificate ARN."
  value       = aws_acm_certificate.this.arn
}