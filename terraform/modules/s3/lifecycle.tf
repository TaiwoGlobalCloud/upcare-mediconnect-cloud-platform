#############################################
# Lifecycle Configuration
#############################################

resource "aws_s3_bucket_lifecycle_configuration" "this" {

  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  rule {

    id = "default"

    status = "Enabled"

    filter {}

    noncurrent_version_expiration {

      noncurrent_days = each.value.lifecycle_days

    }

  }

}