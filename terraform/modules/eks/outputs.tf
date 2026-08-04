#############################################
# EKS Outputs
#############################################

output "cluster_name" {
  description = "EKS Cluster Name."
  value       = aws_eks_cluster.this.name
}

output "cluster_arn" {
  description = "EKS Cluster ARN."
  value       = aws_eks_cluster.this.arn
}

output "cluster_endpoint" {
  description = "EKS API Endpoint."
  value       = aws_eks_cluster.this.endpoint
}

output "node_group_name" {
  description = "Managed Node Group Name."
  value       = aws_eks_node_group.default.node_group_name
}