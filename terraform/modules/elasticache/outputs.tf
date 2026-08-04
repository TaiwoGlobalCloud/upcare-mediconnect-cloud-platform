#############################################
# ElastiCache Outputs
#############################################

output "cluster_id" {
  description = "Redis Cluster ID."
  value       = aws_elasticache_cluster.this.id
}

output "primary_endpoint" {
  description = "Redis Primary Endpoint."
  value       = aws_elasticache_cluster.this.cache_nodes[0].address
}

output "port" {
  description = "Redis Port."
  value       = aws_elasticache_cluster.this.port
}