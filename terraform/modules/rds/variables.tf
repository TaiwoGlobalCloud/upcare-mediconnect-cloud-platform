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
# Networking
#############################################

variable "private_subnet_ids" {
  description = "Private subnet IDs."
  type        = list(string)
}

variable "database_security_group_id" {
  description = "Database Security Group ID."
  type        = string
}

#############################################
# Database Configuration
#############################################

variable "db_name" {
  description = "Database name."
  type        = string
}

variable "db_username" {
  description = "Database username."
  type        = string
}

variable "db_password" {
  description = "Database password."
  type        = string
  sensitive   = true
}

variable "instance_class" {
  description = "RDS instance class."
  type        = string
  default     = "db.t3.micro"
}

#############################################
# High Availability & Maintenance
#############################################

variable "multi_az" {
  description = "Enable Multi-AZ deployment."
  type        = bool
  default     = true
}

variable "auto_minor_version_upgrade" {
  description = "Automatically apply minor engine upgrades."
  type        = bool
  default     = true
}

#############################################
# Monitoring
#############################################

variable "enabled_cloudwatch_logs_exports" {
  description = "CloudWatch log types to export."
  type        = list(string)

  default = [
    "postgresql"
  ]
}

#############################################
# Enhanced Monitoring
#############################################

variable "monitoring_interval" {
  description = "Enhanced Monitoring interval (seconds)."
  type        = number
  default     = 60
}

variable "performance_insights_enabled" {
  description = "Enable RDS Performance Insights."
  type        = bool
  default     = true
}

variable "performance_insights_retention_period" {
  description = "Performance Insights retention period."
  type        = number
  default     = 7
}

#############################################
# KMS Integration
#############################################

variable "kms_key_arn" {
  description = "Customer-managed KMS Key ARN."
  type        = string
}