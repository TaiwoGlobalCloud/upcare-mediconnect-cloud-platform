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

#############################################
# KMS Integration
#############################################

variable "kms_key_arn" {
  description = "KMS Key ARN used to encrypt the AWS Backup Vault."
  type        = string
}