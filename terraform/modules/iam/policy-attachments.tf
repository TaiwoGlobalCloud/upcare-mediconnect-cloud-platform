#############################################
# IAM Policy Attachments
#############################################

resource "aws_iam_role_policy_attachment" "ec2_ssm" {

  role = aws_iam_role.ec2.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}