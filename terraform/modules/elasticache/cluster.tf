#############################################
# Redis Replication Group
#############################################

resource "aws_elasticache_replication_group" "this" {

  replication_group_id = "${local.name_prefix}-redis"

  description = "Redis replication group for UpCare MediConnect"

  engine         = "redis"
  engine_version = "7.1"

  node_type = var.node_type

  num_cache_clusters = 1

  parameter_group_name = "default.redis7"

  port = 6379

  subnet_group_name = aws_elasticache_subnet_group.this.name

  security_group_ids = [
    var.security_group_id
  ]

  #############################################
  # Security Hardening
  #############################################

  at_rest_encryption_enabled = true

  transit_encryption_enabled = true

  automatic_failover_enabled = false

  snapshot_retention_limit = var.snapshot_retention_limit

  snapshot_window = var.snapshot_window

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-redis"
    }
  )

}