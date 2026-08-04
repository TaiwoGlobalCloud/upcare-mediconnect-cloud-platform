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
# Access Analyzer
#############################################

variable "analyzer_type" {
  description = "IAM Access Analyzer type."
  type        = string
  default     = "ACCOUNT"

  validation {
    condition     = contains(["ACCOUNT", "ORGANIZATION"], var.analyzer_type)
    error_message = "Analyzer type must be ACCOUNT or ORGANIZATION."
  }
}