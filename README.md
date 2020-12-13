# tf-mod-aws-subnet-pair

Creates a public and a private subnet in a VPC. The public subnet has both an IPv4 and IPv6 address block assigned, and will be associated to a routing table so that it can handle external traffic. The private subnet only has an IPv4 address block and is not associated to any routing table.

This is a very basic module that I created for a very specific context, and one of my first experiments in writing Terraform modules. It's probably neither useful enough nor good enough for general use.

## Requirements

The following requirements are needed by this module:

- terraform (>= 0.13)

- aws (~> 3.15.0)

## Providers

The following providers are used by this module:

- aws (~> 3.15.0)

## Required Inputs

The following input variables are required:

### az

Description: AZ in the VPC where we'll create the subnets

Type: `string`

### priv\_subnet\_ipv4\_cidr\_block

Description: IPv4 address range for the private subnet

Type: `string`

### priv\_subnet\_name

Description: Sets the Name tag for the private subnet

Type: `string`

### pub\_route\_table

Description: ID of the routing table that will be used in the public subnet

Type: `string`

### pub\_subnet\_ipv4\_cidr\_block

Description: IPv4 address range for the public subnet

Type: `string`

### pub\_subnet\_ipv6\_cidr\_block

Description: IPv6 address range for the public subnet

Type: `string`

### pub\_subnet\_name

Description: Sets the Name tag for the public subnet

Type: `string`

### region

Description: Region for this VPC

Type: `string`

### vpc\_id

Description: VPC in which we are creating these subnets

Type: `string`

## Optional Inputs

No optional input.

## Outputs

The following outputs are exported:

### private\_subnet\_id

Description: Id of the private subnet

### private\_subnet\_ipv4\_range

Description: IPv4 CIDR block of the private subnet

### public\_subnet\_id

Description: Id of the public subnet

### public\_subnet\_ipv4\_range

Description: IPv4 CIDR block of the public subnet

### public\_subnet\_ipv6\_range

Description: IPv6 CIDR block of the public subnet

