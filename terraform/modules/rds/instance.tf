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

  backup_retention_period = 7
  skip_final_snapshot     = true
  deletion_protection     = false

  apply_immediately = true

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-postgres"
    }
  )

}