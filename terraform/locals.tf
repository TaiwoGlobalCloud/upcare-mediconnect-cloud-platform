#############################################
# Local Values
#############################################

locals {
  project = {
    name        = var.project_name
    environment = var.environment
    region      = var.aws_region
  }

  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Repository  = var.repository_name
    Owner       = "Cloud Engineering"
  }
}