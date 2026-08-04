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