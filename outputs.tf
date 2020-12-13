# Subnets information
output "public_subnet_id" {
  description = "Id of the public subnet"
  value = aws_subnet.public.id
}

output "public_subnet_ipv4_range" {
  description = "IPv4 CIDR block of the public subnet"
  value = aws_subnet.public.cidr_block
}

output "public_subnet_ipv6_range" {
  description = "IPv6 CIDR block of the public subnet"
  value = aws_subnet.public.ipv6_cidr_block
}

output "private_subnet_id" {
  description = "Id of the private subnet"
  value = aws_subnet.private.id
}

output "private_subnet_ipv4_range" {
  description = "IPv4 CIDR block of the private subnet"
  value = aws_subnet.private.cidr_block
}

