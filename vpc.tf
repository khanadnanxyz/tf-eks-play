resource "aws_vpc" "tfvpc" {
  cidr_block                       = "192.168.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false
  tags = {
    actions = "tf"
    Name = "tf"
  }
}

output "vpc_id" {
  value       = aws_vpc.tfvpc.id
  description = "VPC ID"
  sensitive   = false
}