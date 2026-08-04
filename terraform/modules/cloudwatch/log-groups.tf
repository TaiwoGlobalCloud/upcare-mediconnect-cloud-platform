#############################################
# CloudWatch Log Group
#############################################

resource "aws_cloudwatch_log_group" "application" {

  name = "/aws/${local.name_prefix}/application"

  retention_in_days = var.log_retention_days

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-application-logs"
    }
  )

}