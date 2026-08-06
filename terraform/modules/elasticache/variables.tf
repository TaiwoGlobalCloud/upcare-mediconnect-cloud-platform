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

variable "security_group_id" {
  description = "ElastiCache Security Group ID."
  type        = string
}

#############################################
# Redis Configuration
#############################################

variable "node_type" {
  description = "Redis node type."
  type        = string
  default     = "cache.t3.micro"
}

#############################################
# Backup Configuration
#############################################

variable "snapshot_retention_limit" {
  description = "Number of days to retain automatic Redis snapshots."
  type        = number
  default     = 7
}

variable "snapshot_window" {
  description = "Daily time range during which snapshots are created."
  type        = string
  default     = "03:00-05:00"
}