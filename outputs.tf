output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "key_pair_name" {
  value = module.ec2-key-pair.key_pair_name
}

output "security_group_id" {
  value = module.security-group.security_group_id
}

output "db_instance_id" {
  value = module.ec2.instance_ids[0]
}

output "metabase_instance_id" {
  value = module.ec2.instance_ids[1]
}

output "db_instance_public_ip" {
  value = module.ec2.instance_public_ips[0]
}

output "metabase_instance_public_ip" {
  value = module.ec2.instance_public_ips[1]
}

output "internet_gateway_id" {
  value = module.internet-gateway.internet_gateway_id
}

output "route_table_id" {
  value = module.route-table.route_table_id
}