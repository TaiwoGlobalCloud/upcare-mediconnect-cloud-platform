#############################################
# Bucket Policy
#############################################

data "aws_iam_policy_document" "https_only" {

  for_each = var.buckets

  statement {

    sid = "DenyInsecureTransport"

    effect = "Deny"

    principals {

      type = "*"

      identifiers = ["*"]

    }

    actions = [
      "s3:*"
    ]

    resources = [
      aws_s3_bucket.this[each.key].arn,
      "${aws_s3_bucket.this[each.key].arn}/*"
    ]

    condition {

      test = "Bool"

      variable = "aws:SecureTransport"

      values = [
        "false"
      ]

    }

  }

}

resource "aws_s3_bucket_policy" "https_only" {

  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  policy = data.aws_iam_policy_document.https_only[each.key].json

}