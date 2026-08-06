#############################################
# Lifecycle Configuration
#############################################

resource "aws_s3_bucket_lifecycle_configuration" "this" {

  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  rule {

    id     = "default"
    status = "Enabled"

    filter {}

    #############################################
    # Expire Noncurrent Object Versions
    #############################################

    noncurrent_version_expiration {

      noncurrent_days = each.value.lifecycle_days

    }

    #############################################
    # Abort Incomplete Multipart Uploads
    #############################################

    abort_incomplete_multipart_upload {

      days_after_initiation = 7

    }

  }

}