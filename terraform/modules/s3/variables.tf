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
# Bucket Configuration
#############################################

variable "buckets" {

  description = "Map of S3 buckets."

  type = map(object({

    versioning = bool

  }))

}
#############################################
# KMS Configuration
#############################################

variable "kms_key_arn" {
  description = "KMS Key ARN used for S3 encryption."
  type        = string
}