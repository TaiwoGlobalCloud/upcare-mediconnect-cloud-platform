#############################################
# AWS WAF Web ACL
#############################################

resource "aws_wafv2_web_acl" "this" {

  name  = "${local.name_prefix}-web-acl"
  scope = var.scope

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${local.name_prefix}-web-acl"
    sampled_requests_enabled   = true
  }

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-web-acl"
    }
  )

}