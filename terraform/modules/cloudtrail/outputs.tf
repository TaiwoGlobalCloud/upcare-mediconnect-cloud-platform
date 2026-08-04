#############################################
# CloudTrail Outputs
#############################################

output "trail_name" {

  description = "CloudTrail name."

  value = aws_cloudtrail.this.name

}

output "trail_arn" {

  description = "CloudTrail ARN."

  value = aws_cloudtrail.this.arn

}