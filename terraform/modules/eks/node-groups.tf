#############################################
# EKS Managed Node Group
#############################################

resource "aws_eks_node_group" "default" {

  cluster_name = aws_eks_cluster.this.name

  node_group_name = "${local.name_prefix}-default"

  node_role_arn = aws_iam_role.node.arn

  subnet_ids = var.private_subnet_ids

  scaling_config {

    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size

  }

  instance_types = [
    "t3.medium"
  ]

  capacity_type = "ON_DEMAND"

  ami_type = "AL2_x86_64"

  depends_on = [
    aws_iam_role_policy_attachment.worker_nodes,
    aws_iam_role_policy_attachment.cni,
    aws_iam_role_policy_attachment.ecr
  ]

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-default"
    }
  )

}