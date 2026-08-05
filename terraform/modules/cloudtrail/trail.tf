#############################################
# AWS CloudTrail
#############################################

resource "aws_cloudtrail" "this" {

  name = "${local.name_prefix}-${var.trail_name}"

  s3_bucket_name = var.s3_bucket_name

  kms_key_id = var.kms_key_arn

  sns_topic_name = aws_sns_topic.cloudtrail.name

  enable_logging = true

  include_global_service_events = true

  is_multi_region_trail      = var.is_multi_region_trail
  enable_log_file_validation = var.enable_log_file_validation

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-${var.trail_name}"
    }
  )
}