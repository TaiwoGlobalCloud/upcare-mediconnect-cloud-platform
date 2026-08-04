#############################################
# Project Variables
#############################################

variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

#############################################
# CloudWatch Configuration
#############################################

variable "log_retention_days" {
  description = "CloudWatch log retention period."

  type    = number
  default = 90
}
variable "kms_key_arn" {
  description = "KMS Key ARN used to encrypt CloudWatch Log Groups."
  type        = string
}