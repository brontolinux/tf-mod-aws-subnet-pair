variable "vpc_id" {
  description = "VPC in which we are creating these subnets"
}

variable "region" {
  description = "Region for this VPC"
}

variable "az" {
  description = "AZ in the VPC where we'll create the subnets"
}

# Public subnet info
variable "pub_subnet_ipv4_cidr_block" {
  description = "IPv4 address range for the public subnet"
}

variable "pub_subnet_ipv6_cidr_block" {
  description = "IPv6 address range for the public subnet"
}

variable "pub_subnet_name" {
  description = "Sets the Name tag for the public subnet"
}

variable "pub_route_table" {
  description = "ID of the routing table that will be used in the public subnet"
}

# Private subnet info
variable "priv_subnet_ipv4_cidr_block" {
  description = "IPv4 address range for the private subnet"
}

variable "priv_subnet_name" {
  description = "Sets the Name tag for the private subnet"
}
