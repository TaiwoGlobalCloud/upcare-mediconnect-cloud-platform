#############################################
# Redis Cluster
#############################################

resource "aws_elasticache_cluster" "this" {

  cluster_id = "${local.name_prefix}-redis"

  engine = "redis"

  engine_version = "7.1"

  node_type = var.node_type

  num_cache_nodes = 1

  parameter_group_name = "default.redis7"

  port = 6379

  subnet_group_name = aws_elasticache_subnet_group.this.name

  security_group_ids = [
    var.security_group_id
  ]

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-redis"
    }
  )

}