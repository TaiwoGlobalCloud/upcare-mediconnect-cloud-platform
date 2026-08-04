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
# ECR Configuration
#############################################

variable "repository_names" {
  description = "List of ECR repositories."
  type        = list(string)
}