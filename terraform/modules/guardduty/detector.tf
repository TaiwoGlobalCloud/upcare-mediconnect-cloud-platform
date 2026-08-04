#############################################
# GuardDuty Detector
#############################################

resource "aws_guardduty_detector" "this" {

  enable = var.enable_guardduty

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-guardduty"
    }
  )

}