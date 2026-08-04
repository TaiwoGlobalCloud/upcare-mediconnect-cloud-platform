#############################################
# CloudWatch Log Group
#############################################

resource "aws_cloudwatch_log_group" "application" {

  name = "/aws/${local.name_prefix}/application"

  retention_in_days = var.log_retention_days

  kms_key_id = var.kms_key_arn

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-application-logs"
    }
  )

}