output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "ipv6_cidr_block" {
  description = "The Amazon-provided IPv6 CIDR block"
  value       = aws_vpc.main.ipv6_cidr_block
}