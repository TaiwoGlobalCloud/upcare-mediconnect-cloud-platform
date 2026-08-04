#############################################
# S3 Outputs
#############################################

output "bucket_ids" {

  description = "S3 Bucket IDs"

  value = {
    for key, bucket in aws_s3_bucket.this :
    key => bucket.id
  }

}

output "bucket_arns" {

  description = "S3 Bucket ARNs"

  value = {
    for key, bucket in aws_s3_bucket.this :
    key => bucket.arn
  }

}