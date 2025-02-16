variable "security_group_id" {
  description = "The ID of the security group to associate with the Aurora PostgreSQL cluster"
}

variable "subnet_id" {
  description = "The ID of the subnet to place the Aurora PostgreSQL cluster in"
}

variable "aurora_postgres_engine_version" {
  description = "The engine version of the AWS Aurora PostgreSQL cluster"
}

variable "aurora_postgres_instance_type" {
  description = "The instance type of the AWS Aurora PostgreSQL cluster"
}

variable "aurora_postgres_db_name" {
  description = "The name of the database in the AWS Aurora PostgreSQL cluster"
}

variable "aurora_postgres_master_username" {
  description = "The master username for the AWS Aurora PostgreSQL cluster"
}

variable "aurora_postgres_master_password" {
  description = "The master password for the AWS Aurora PostgreSQL cluster"
  sensitive   = true
}