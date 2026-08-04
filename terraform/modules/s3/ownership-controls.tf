#############################################
# Ownership Controls
#############################################

resource "aws_s3_bucket_ownership_controls" "this" {

  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}