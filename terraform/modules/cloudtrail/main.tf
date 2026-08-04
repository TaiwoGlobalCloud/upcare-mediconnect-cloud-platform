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

  kms_key_arn = module.kms.key_arn

}