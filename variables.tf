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