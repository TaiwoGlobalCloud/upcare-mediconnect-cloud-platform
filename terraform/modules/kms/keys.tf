#############################################
# Customer Managed KMS Key
#############################################

resource "aws_kms_key" "this" {

  description = "Customer-managed KMS key for UpCare MediConnect."

  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days

  policy = data.aws_iam_policy_document.kms.json

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-kms-key"
    }
  )

}