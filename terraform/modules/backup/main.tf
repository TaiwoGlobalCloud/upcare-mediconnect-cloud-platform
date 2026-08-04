#############################################
# AWS Backup Module
# UpCare MediConnect Cloud Platform
#############################################

# Resources are organized into dedicated files.

#############################################
# AWS Backup Module
#############################################

module "backup" {

  source = "./modules/backup"

  project_name = var.project_name
  environment  = var.environment

  kms_key_arn = module.kms.key_arn

}