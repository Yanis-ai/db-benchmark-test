region = "ap-northeast-1" 
vpc_cidr_block = "10.0.0.0/16"
subnet_cidr_block = "10.0.1.0/24"
availability_zone = "ap-northeast-1a"
db_instance_type = "t2.micro"  
metabase_instance_type = "t2.medium"  
db_ami = "ami-xxxxxxxxxxxxxx"  # 这里需替换为适合的 AMI ID，确保是 Ubuntu 系统
metabase_ami = "ami-yyyyyyyyyyyyyy"  # 这里需替换为适合的 AMI ID，确保是 Ubuntu 系统