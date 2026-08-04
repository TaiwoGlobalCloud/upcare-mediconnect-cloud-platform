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
# KMS Configuration
#############################################

variable "enable_key_rotation" {
  description = "Enable automatic key rotation."
  type        = bool
  default     = true
}

variable "deletion_window_in_days" {
  description = "Waiting period before KMS key deletion."
  type        = number
  default     = 30
}