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
# AWS Config
#############################################

variable "config_bucket_name" {
  description = "S3 bucket for AWS Config snapshots."
  type        = string
}