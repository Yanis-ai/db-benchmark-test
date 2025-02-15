resource "aws_instance" "instances" {
  count = length(var.instance_names)

  ami           = var.amis[count.index]
  instance_type = var.instance_types[count.index]
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = var.key_pair_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data = count.index == 1 && var.metabase_install_script != "" ? var.metabase_install_script : ""

  tags = {
    Name = var.instance_names[count.index]
  }
}

output "instance_ids" {
  value = aws_instance.instances.*.id
}

output "instance_public_ips" {
  value = [for instance in aws_instance.instances : instance.public_ip]
}