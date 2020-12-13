/*
* # tf-mod-aws-subnet-pair
*
* Creates a public and a private subnet in a VPC. The public subnet has both an IPv4 and IPv6 address block assigned, and will be associated to a routing table so that it can handle external traffic. The private subnet only has an IPv4 address block and is not associated to any routing table.
*
* This is a very basic module that I created for a very specific context, and one of my first experiments in writing Terraform modules. It's probably neither useful enough nor good enough for general use.
*/
locals {
      availability_zone = "${var.region}${var.az}"
}

resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  availability_zone = local.availability_zone

  cidr_block      = var.pub_subnet_ipv4_cidr_block
  ipv6_cidr_block = var.pub_subnet_ipv6_cidr_block

  tags = {
    Name = var.pub_subnet_name
  }
}

resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  availability_zone = local.availability_zone

  cidr_block = var.priv_subnet_ipv4_cidr_block

  tags = {
    Name = var.priv_subnet_name
  }
}

resource "aws_route_table_association" "this" {
  subnet_id      = aws_subnet.public.id
  route_table_id = var.pub_route_table
}

