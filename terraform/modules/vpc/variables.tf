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

variable "aws_region" {
  description = "AWS region."
  type        = string
}

#############################################
# Networking Variables
#############################################

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
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