#############################################
# EC2 IAM Role
#############################################

resource "aws_iam_role" "ec2" {

  name = "${local.name_prefix}-ec2-role"

  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-ec2-role"
    }
  )

}