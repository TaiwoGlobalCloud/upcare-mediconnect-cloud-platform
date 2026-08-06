#############################################
# Amazon RDS PostgreSQL Instance
#############################################

resource "aws_db_instance" "this" {

  identifier = "${local.name_prefix}-postgres"

  engine         = "postgres"
  engine_version = "17.5"

  instance_class = var.instance_class

  allocated_storage     = 20
  max_allocated_storage = 100

  storage_type      = "gp3"
  storage_encrypted = true

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.this.name
  parameter_group_name   = aws_db_parameter_group.this.name
  vpc_security_group_ids = [var.database_security_group_id]

  publicly_accessible = false

  #############################################
  # Security Hardening
  #############################################

  multi_az                   = var.multi_az
  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  #############################################
  # Enhanced Monitoring
  #############################################

  monitoring_interval = var.monitoring_interval

  monitoring_role_arn = aws_iam_role.rds_monitoring.arn

  #############################################
  #############################################
  # Performance Insights
  #############################################

  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period

  #############################################

  # Backup & Maintenance
  #############################################

  backup_retention_period = 7

  apply_immediately = true

  skip_final_snapshot = true

  deletion_protection = false

  #############################################
  # Tags
  #############################################

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-postgres"
    }
  )

}