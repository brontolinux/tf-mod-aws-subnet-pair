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

