resource "aws_rds_cluster" "aurora_postgres" {
  cluster_identifier      = "db-benchmark-aurora-postgres"
  engine                  = "aurora-postgresql"
  engine_version          = var.aurora_postgres_engine_version
  database_name           = var.aurora_postgres_db_name
  master_username         = var.aurora_postgres_master_username
  master_password         = var.aurora_postgres_master_password
  skip_final_snapshot     = true
  vpc_security_group_ids  = [var.security_group_id]
  db_subnet_group_name    = aws_db_subnet_group.aurora_postgres.name
}

resource "aws_rds_cluster_instance" "aurora_postgres" {
  count                   = 1
  identifier              = "db-benchmark-aurora-postgres-instance-${count.index}"
  cluster_identifier      = aws_rds_cluster.aurora_postgres.id
  instance_class          = var.aurora_postgres_instance_type
  engine                  = aws_rds_cluster.aurora_postgres.engine
  engine_version          = aws_rds_cluster.aurora_postgres.engine_version
}

resource "aws_db_subnet_group" "aurora_postgres" {
  name       = "db-benchmark-aurora-postgres-subnet-group"
  subnet_ids = [var.subnet_id]
  tags = {
    Name = "db-benchmark-aurora-postgres-subnet-group"
  }
}