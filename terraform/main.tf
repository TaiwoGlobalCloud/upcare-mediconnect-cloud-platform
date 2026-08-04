#############################################
# Root Terraform Module
# UpCare MediConnect Cloud Platform
#############################################

#############################################
# VPC Module
#############################################

module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  environment  = var.environment
  aws_region   = var.aws_region

  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  enable_nat_gateway = var.enable_nat_gateway
}

#############################################
# IAM Module
#############################################

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

#############################################
# Security Groups Module
#############################################

module "security_groups" {
  source = "./modules/security-groups"

  project_name = var.project_name
  environment  = var.environment

  vpc_id = module.vpc.vpc_id
}

#############################################
# S3 Module
#############################################

module "s3" {

  source = "./modules/s3"

  project_name = var.project_name
  environment  = var.environment

  buckets = var.buckets

  kms_key_arn = module.kms.key_arn

}

#############################################
# KMS Module
#############################################

module "kms" {
  source = "./modules/kms"

  project_name = var.project_name
  environment  = var.environment

  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
}

#############################################
#############################################
# Application Load Balancer (ALB) Module
#############################################

module "alb" {

  source = "./modules/alb"

  project_name = var.project_name
  environment  = var.environment

  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  security_group_ids = [module.security_groups.alb_security_group_id]

  access_logs_bucket = module.s3.bucket_ids["audit"]

}
# CloudWatch Module
#############################################

module "cloudwatch" {

  source = "./modules/cloudwatch"

  project_name = var.project_name
  environment  = var.environment

  log_retention_days = var.log_retention_days

  kms_key_arn = module.kms.key_arn

}

#############################################
# CloudTrail Module
#############################################

module "cloudtrail" {

  source = "./modules/cloudtrail"

  project_name = var.project_name
  environment  = var.environment

  trail_name                 = var.trail_name
  enable_log_file_validation = var.enable_log_file_validation
  is_multi_region_trail      = var.is_multi_region_trail

  s3_bucket_name = module.s3.bucket_ids["audit"]

}

#############################################
# GuardDuty Module
#############################################

module "guardduty" {

  source = "./modules/guardduty"

  project_name = var.project_name
  environment  = var.environment

  enable_guardduty = var.enable_guardduty

}

#############################################
# Security Hub Module
#############################################

module "security_hub" {

  source = "./modules/security-hub"

  project_name = var.project_name
  environment  = var.environment

  enable_security_hub = var.enable_security_hub

}

#############################################
# IAM Access Analyzer Module
#############################################

module "access_analyzer" {

  source = "./modules/access-analyzer"

  project_name = var.project_name
  environment  = var.environment

  analyzer_type = var.analyzer_type

}

#############################################
# AWS WAF Module
#############################################

module "waf" {

  source = "./modules/waf"

  project_name = var.project_name
  environment  = var.environment

  scope = var.waf_scope

}

#############################################
# Amazon ECR Module
#############################################

module "ecr" {

  source = "./modules/ecr"

  project_name = var.project_name
  environment  = var.environment

  repository_names = var.repository_names

  kms_key_arn = module.kms.key_arn

}

#############################################
# Amazon EKS Module
#############################################

module "eks" {

  source = "./modules/eks"

  project_name = var.project_name
  environment  = var.environment

  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version

  desired_size = var.desired_size
  min_size     = var.min_size
  max_size     = var.max_size

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  public_access_cidrs = var.public_access_cidrs

}

#############################################
# Amazon RDS Module
#############################################

module "rds" {

  source = "./modules/rds"

  project_name = var.project_name
  environment  = var.environment

  private_subnet_ids = module.vpc.private_subnet_ids

  database_security_group_id = module.security_groups.database_security_group_id

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password

  instance_class = var.db_instance_class

}

#############################################
# Amazon ElastiCache Module
#############################################

module "elasticache" {

  source = "./modules/elasticache"

  project_name = var.project_name
  environment  = var.environment

  private_subnet_ids = module.vpc.private_subnet_ids

  security_group_id = module.security_groups.database_security_group_id

  node_type = var.redis_node_type

}
#############################################
# AWS Certificate Manager (ACM) Module
#############################################

module "acm" {

  source = "./modules/acm"

  project_name = var.project_name
  environment  = var.environment

  domain_name = var.domain_name

  subject_alternative_names = var.subject_alternative_names

  validation_method = var.certificate_validation_method

}