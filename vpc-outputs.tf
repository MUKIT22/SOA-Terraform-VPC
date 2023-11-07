# VPC Output Values

# VPC ID
output "vpc_id_stage" {
  description = "The ID of the VPC Stage"
  value       = module.vpc_stage.vpc_id
}

output "vpc_id_prod" {
  description = "The ID of the VPC Prod"
  value       = module.vpc_prod.vpc_id
}

output "vpc_id_vpn" {
  description = "The ID of the VPC Stage"
  value       = module.vpc_vpn.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block_stage" {
  description = "The CIDR block of the VPC"
  value       = module.vpc_stage.vpc_cidr_block
}
output "vpc_cidr_block_prod" {
  description = "The CIDR block of the VPC"
  value       = module.vpc_prod.vpc_cidr_block
}
output "vpc_cidr_block_stage_vpn" {
  description = "The CIDR block of the VPC"
  value       = module.vpc_vpn.vpc_cidr_block
}

# VPC Public Subnets
output "public_subnets_vpc_stage" {
  description = "List of IDs of public subnets"
  value       = module.vpc_stage.public_subnets
}

# VPC Private Subnets
output "private_subnets_vpc_stage" {
  description = "List of IDs of private subnets"
  value       = module.vpc_stage.private_subnets
}

output "db_private_subnets_vpc_stage" {
  description = "List of IDs of private subnets"
  value       = module.vpc_stage.database_subnets
}

output "public_subnets_vpc_prod" {
  description = "List of IDs of public subnets"
  value       = module.vpc_prod.public_subnets
}

# VPC Private Subnets
output "private_subnets_vpc_prod" {
  description = "List of IDs of private subnets"
  value       = module.vpc_prod.private_subnets
}

output "db_private_subnets_vpc_prod" {
  description = "List of IDs of private subnets"
  value       = module.vpc_prod.database_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips_stage" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc_stage.nat_public_ips
}

output "nat_public_ips_prod" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc_prod.nat_public_ips
}
# VPC AZs
output "azs_stage" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc_stage.azs
}
output "azs_prod" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc_prod.azs
}

output "azs_vpn" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc_vpn.azs
}