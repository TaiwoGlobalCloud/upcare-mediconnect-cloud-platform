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
# Secret Configuration
#############################################

variable "db_username" {
  description = "Database username."
  type        = string
}

variable "db_password" {
  description = "Database password."
  type        = string
  sensitive   = true
}

#############################################
# KMS Integration
#############################################

variable "kms_key_arn" {
  description = "Customer-managed KMS Key ARN."
  type        = string
}