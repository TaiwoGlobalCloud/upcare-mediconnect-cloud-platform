#############################################
# S3 Buckets
#############################################

resource "aws_s3_bucket" "this" {

  for_each = var.buckets

  bucket = lower(
    "${local.name_prefix}-${each.key}"
  )

  force_destroy = each.value.force_destroy

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-${each.key}"
    }
  )

}