#############################################
# CloudTrail SNS Topic
#############################################

resource "aws_sns_topic" "cloudtrail" {

  name = "${local.name_prefix}-${var.trail_name}-sns"

  kms_master_key_id = var.kms_key_arn

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-${var.trail_name}-sns"
    }
  )

}