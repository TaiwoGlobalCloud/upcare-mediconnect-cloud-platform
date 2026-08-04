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
# GuardDuty Configuration
#############################################

variable "enable_guardduty" {
  description = "Enable Amazon GuardDuty."
  type        = bool
  default     = true
}