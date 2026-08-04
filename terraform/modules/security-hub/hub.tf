#############################################
# AWS Security Hub
#############################################

resource "aws_securityhub_account" "this" {

  enable_default_standards = var.enable_security_hub

}
