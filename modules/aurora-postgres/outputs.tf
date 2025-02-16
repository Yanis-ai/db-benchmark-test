output "aurora_postgres_cluster_endpoint" {
  value = aws_rds_cluster.aurora_postgres.endpoint
}

output "aurora_postgres_cluster_arn" {
  value = aws_rds_cluster.aurora_postgres.arn
}