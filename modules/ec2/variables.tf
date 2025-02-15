variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnet_id" {
  description = "The ID of the subnet"
}

variable "security_group_id" {
  description = "The ID of the security group"
}

variable "instance_names" {
  description = "List of instance names"
  type        = list(string)
}

variable "instance_types" {
  description = "List of instance types"
  type        = list(string)
}

variable "amis" {
  description = "List of AMI IDs"
  type        = list(string)
}

variable "key_pair_name" {
  description = "Name of the key pair"
}

variable "associate_public_ip_address" {
  description = "Whether to associate public IP address"
  type        = bool
  default     = true
}

variable "metabase_install_script" {
  description = "Script to install Docker and Metabase on the Metabase instance"
  type        = string
  default     = ""
}