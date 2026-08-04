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

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs."
  type        = list(string)
}

#############################################
# EKS Configuration
#############################################

variable "cluster_name" {
  description = "EKS cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version."
  type        = string
  default     = "1.33"
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 4
}
#############################################
# EKS API Endpoint Access
#############################################

variable "public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public API endpoint."
  type        = list(string)

  default = [
    "203.0.113.0/24"
  ]
}