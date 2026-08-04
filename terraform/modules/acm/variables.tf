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
# ACM Configuration
#############################################

variable "domain_name" {
  description = "Primary domain name."
  type        = string
}

variable "subject_alternative_names" {
  description = "Additional domain names."
  type        = list(string)
  default     = []
}

variable "validation_method" {
  description = "Certificate validation method."
  type        = string
  default     = "DNS"
}