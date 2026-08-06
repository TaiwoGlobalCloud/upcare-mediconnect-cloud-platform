#############################################
# Amazon EKS Cluster
#############################################

resource "aws_eks_cluster" "this" {

  name     = var.cluster_name
  role_arn = aws_iam_role.cluster.arn

  version = var.kubernetes_version

  #############################################
  # Networking
  #############################################

  vpc_config {

    subnet_ids = var.private_subnet_ids

    endpoint_private_access = true
    endpoint_public_access  = false

  }

  #############################################
  # Control Plane Logging
  #############################################

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]

  #############################################
  # Secrets Encryption
  #############################################

  encryption_config {

    provider {
      key_arn = var.kms_key_arn
    }

    resources = [
      "secrets"
    ]

  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster
  ]

  tags = merge(
    local.common_tags,
    {
      Name = var.cluster_name
    }
  )

}