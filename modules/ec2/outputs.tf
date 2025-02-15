output "instance_ids" {
  value = aws_instance.instances.*.id
}

output "instance_public_ips" {
  value = [for instance in aws_instance.instances : instance.public_ip]
}