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

variable "backup_vault_name" {
  description = "AWS Backup Vault name."
  type        = string
  default     = "backup-vault"
}

variable "backup_plan_name" {
  description = "AWS Backup Plan name."
  type        = string
  default     = "daily-backup-plan"
}

variable "backup_selection_name" {
  description = "AWS Backup Selection name."
  type        = string
  default     = "backup-selection"
}

variable "backup_schedule" {
  description = "Backup schedule in cron format."
  type        = string
  default     = "cron(0 5 * * ? *)"
}

#############################################
# KMS Integration
#############################################

variable "kms_key_arn" {
  description = "KMS Key ARN used to encrypt the AWS Backup Vault."
  type        = string
}