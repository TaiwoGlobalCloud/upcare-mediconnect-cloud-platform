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
# Backup Configuration
#############################################

variable "backup_plan_name" {
  description = "AWS Backup plan name."
  type        = string
  default     = "daily-backup"
}

variable "backup_vault_name" {
  description = "AWS Backup vault name."
  type        = string
  default     = "primary-vault"
}