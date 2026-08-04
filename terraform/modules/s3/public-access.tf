#############################################
# Public Access Block
#############################################

resource "aws_s3_bucket_public_access_block" "this" {

  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true

}