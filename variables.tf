variable "region" {
  description = "The AWS region where the VPC will be created"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
}

variable "db_instance_type" {
  description = "Instance type for the db-benchmark-test EC2 instance"
}

variable "metabase_instance_type" {
  description = "Instance type for the metabase EC2 instance"
}

variable "db_ami" {
  description = "AMI ID for the db-benchmark-test EC2 instance"
}

variable "metabase_ami" {
  description = "AMI ID for the metabase EC2 instance"
}

variable "aurora_postgres_engine_version" {
  description = "The engine version of the AWS Aurora PostgreSQL cluster"
  default     = "14.5"  # 可根据需要修改默认值
}

variable "aurora_postgres_instance_type" {
  description = "The instance type of the AWS Aurora PostgreSQL cluster"
  default     = "db.t3.medium"  # 可根据需要修改默认值
}

variable "aurora_postgres_db_name" {
  description = "The name of the database in the AWS Aurora PostgreSQL cluster"
  default     = "benchmark_db"  # 可根据需要修改默认值
}

variable "aurora_postgres_master_username" {
  description = "The master username for the AWS Aurora PostgreSQL cluster"
  default     = "dbadmin"  # 可根据需要修改默认值
}

variable "aurora_postgres_master_password" {
  description = "The master password for the AWS Aurora PostgreSQL cluster"
  sensitive   = true
}