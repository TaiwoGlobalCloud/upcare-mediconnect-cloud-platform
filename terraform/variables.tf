#############################################
# Project Configuration
#############################################

variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Deployment environment."

  type = string

  validation {
    condition = contains(
      ["dev", "staging", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "aws_region" {
  description = "AWS Region."
  type        = string
}

variable "repository_name" {
  description = "GitHub repository."
  type        = string
}

#############################################
# Networking
#############################################

variable "vpc_cidr" {
  description = "VPC CIDR."
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones."
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnet CIDRs."
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDRs."
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway."
  type        = bool
}

#############################################
# S3 Bucket Configuration
#############################################

variable "buckets" {
  description = "Configuration for S3 buckets."

  type = map(object({
    versioning     = bool
    force_destroy  = bool
    lifecycle_days = number
  }))
}

#############################################
# KMS Configuration
#############################################

variable "enable_key_rotation" {
  description = "Enable KMS key rotation."
  type        = bool
  default     = true
}

variable "deletion_window_in_days" {
  description = "KMS deletion window."
  type        = number
  default     = 30
}

#############################################
# CloudWatch Configuration
#############################################

variable "log_retention_days" {
  description = "CloudWatch log retention."

  type    = number
  default = 365
}

#############################################
# CloudTrail Configuration
#############################################

variable "trail_name" {
  description = "CloudTrail name."
  type        = string
  default     = "upcare-cloudtrail"
}

variable "enable_log_file_validation" {
  description = "Enable CloudTrail log validation."
  type        = bool
  default     = true
}

variable "is_multi_region_trail" {
  description = "Deploy multi-region trail."
  type        = bool
  default     = true
}

#############################################
# GuardDuty Configuration
#############################################

variable "enable_guardduty" {
  description = "Enable Amazon GuardDuty."
  type        = bool
  default     = true
}

#############################################
# Security Hub Configuration
#############################################

variable "enable_security_hub" {
  description = "Enable AWS Security Hub."
  type        = bool
  default     = true
}

#############################################
# IAM Access Analyzer Configuration
#############################################

variable "analyzer_type" {
  description = "IAM Access Analyzer type."
  type        = string
  default     = "ACCOUNT"
}

#############################################
# AWS WAF Configuration
#############################################

variable "waf_scope" {
  description = "AWS WAF scope."
  type        = string
  default     = "REGIONAL"
}

#############################################
# Application Load Balancer (ALB)
#############################################

variable "alb_internal" {
  description = "Whether the Application Load Balancer is internal."
  type        = bool
  default     = false
}

variable "alb_enable_deletion_protection" {
  description = "Enable deletion protection for the Application Load Balancer."
  type        = bool
  default     = false
}
#############################################
# Amazon ECR
#############################################

variable "repository_names" {
  description = "ECR repositories."

  type = list(string)

  default = [
    "backend",
    "frontend",
    "ai-services"
  ]
}
#############################################
# Amazon EKS
#############################################

variable "cluster_name" {
  description = "Amazon EKS cluster name."
  type        = string
  default     = "upcare-eks"
}

variable "kubernetes_version" {
  description = "Kubernetes version."
  type        = string
  default     = "1.33"
}

variable "desired_size" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 4
}

#############################################
# Amazon RDS
#############################################

variable "db_name" {
  description = "Database name."
  type        = string
  default     = "upcare"
}

variable "db_username" {
  description = "Database administrator username."
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "Database administrator password."
  type        = string
  sensitive   = true
  default     = "ChangeMe123!"
}

variable "db_instance_class" {
  description = "RDS instance class."
  type        = string
  default     = "db.t3.micro"
}
#############################################
# Amazon ElastiCache
#############################################

variable "redis_node_type" {
  description = "Redis node type."
  type        = string
  default     = "cache.t3.micro"
}