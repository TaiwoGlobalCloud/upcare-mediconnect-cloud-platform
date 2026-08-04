#############################################
# GuardDuty Outputs
#############################################

output "detector_id" {
  description = "GuardDuty Detector ID."
  value       = aws_guardduty_detector.this.id
}