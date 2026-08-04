#############################################
# KMS Alias
#############################################

resource "aws_kms_alias" "this" {

  name = "alias/${local.name_prefix}"

  target_key_id = aws_kms_key.this.key_id

}