terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block   = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
}

module "ec2-key-pair" {
  source = "./modules/ec2-key-pair"
  key_pair_name = "db-benchmark-test-key"
  key_output_path = "./keys/db-benchmark-test-key.pem"
}

module "security-group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
  key_pair_name = module.ec2-key-pair.key_pair_name
}

module "internet-gateway" {
  source = "./modules/internet-gateway"
  vpc_id = module.vpc.vpc_id
}

module "route-table" {
  source = "./modules/route-table"
  vpc_id = module.vpc.vpc_id
  internet_gateway_id = module.internet-gateway.internet_gateway_id
  subnet_id = module.vpc.subnet_id
}

module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id
  security_group_id = module.security-group.security_group_id
  instance_names = ["db-benchmark-test", "metabase"]
  instance_types = [var.db_instance_type, var.metabase_instance_type]
  amis = [var.db_ami, var.metabase_ami]
  key_pair_name = module.ec2-key-pair.key_pair_name
  associate_public_ip_address = true
  metabase_install_script = local.metabase_install_script
}
