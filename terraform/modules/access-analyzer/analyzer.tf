#############################################
# IAM Access Analyzer
#############################################

resource "aws_accessanalyzer_analyzer" "this" {

  analyzer_name = "${local.name_prefix}-access-analyzer"

  type = var.analyzer_type

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-access-analyzer"
    }
  )

}