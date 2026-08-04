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
# Security Hub
#############################################

variable "enable_security_hub" {
  description = "Enable AWS Security Hub."
  type        = bool
  default     = true
}