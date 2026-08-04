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
# CloudTrail Configuration
#############################################

variable "trail_name" {
  description = "CloudTrail trail name."
  type        = string
  default     = "upcare-cloudtrail"
}

variable "enable_log_file_validation" {
  description = "Enable CloudTrail log file validation."
  type        = bool
  default     = true
}

variable "is_multi_region_trail" {
  description = "Deploy a multi-region CloudTrail."
  type        = bool
  default     = true
}
#############################################
# S3 Integration
#############################################

variable "s3_bucket_name" {
  description = "S3 bucket used by CloudTrail."
  type        = string
}
#############################################
# KMS Integration
#############################################

variable "kms_key_arn" {
  description = "KMS Key ARN used by CloudTrail."
  type        = string
}