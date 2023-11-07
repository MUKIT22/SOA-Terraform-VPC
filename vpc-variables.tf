# VPC Staging

# AWS Region
variable "aws_region_stage" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-2"
}

# VPC Name
variable "vpc_name_stage" {
  description = "VPC Name"
  type        = string
}

# variable "vpc_tags" {

#   description = "VPC Tag"
#   type        = string
#   default     = "SOA"

# }

# VPC CIDR Block
variable "vpc_cidr_block_stage" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.15.0.0/23"
}

# VPC Availability Zones
variable "vpc_availability_zones_stage" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

# VPC Public Subnets
variable "vpc_public_subnets_stage" {
  description = "VPC Public Subnets"
  type        = list(string)
}

# VPC Private Subnets
variable "vpc_private_subnets_stage" {
  description = "VPC Private Subnets"
  type        = list(string)
}


# VPC Database Subnets
variable "vpc_database_subnets_stage" {
  description = "VPC Private Database Subnets"
  type        = list(string)
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group_stage" {
  description = "VPC Create Database Subnet Group"
  type        = bool
  default     = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table_stage" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}


# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway_stage" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway_stage" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}

############################################
#VPC Production
############################################

# AWS Region
variable "aws_region_prod" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-2"
}

# VPC Name
variable "vpc_name_prod" {
  description = "VPC Name"
  type        = string
  default     = "myvpc"
}

# variable "vpc_tags" {

#   description = "VPC Tag"
#   type        = string
#   default     = "SOA"

# }

# VPC CIDR Block
variable "vpc_cidr_block_prod" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.15.0.0/23"
}

# VPC Availability Zones
variable "vpc_availability_zones_prod" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

# VPC Public Subnets
variable "vpc_public_subnets_prod" {
  description = "VPC Public Subnets"
  type        = list(string)
}

# VPC Private Subnets
variable "vpc_private_subnets_prod" {
  description = "VPC Private Subnets"
  type        = list(string)
}


# VPC Database Subnets
variable "vpc_database_subnets_prod" {
  description = "VPC Private Database Subnets"
  type        = list(string)
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group_prod" {
  description = "VPC Create Database Subnet Group"
  type        = bool
  default     = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table_prod" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}


# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway_prod" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway_prod" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}


############################################
#VPC VPN
############################################


variable "aws_region_vpn" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-2"
}

# VPC Name
variable "vpc_name_vpn" {
  description = "VPC Name"
  type        = string
}

# variable "vpc_tags" {

#   description = "VPC Tag"
#   type        = string
#   default     = "SOA"

# }

# VPC CIDR Block
variable "vpc_cidr_block_vpn" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.15.0.0/23"
}

# VPC Availability Zones
variable "vpc_availability_zones_vpn" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# VPC Public Subnets
variable "vpc_public_subnets_vpn" {
  description = "VPC Public Subnets"
  type        = list(string)
}