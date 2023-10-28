# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  # VPC Basic Details
  name            = var.vpc_name
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets


  # Database Subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # NAT Gateways - Outbound Communication
  # enable_nat_gateway = var.vpc_enable_nat_gateway 
  # single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  # vpc_tags = var.vpc_tags


  public_dedicated_network_acl = true

  public_inbound_acl_rules = [
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "deny",
      "rule_number" : 200
    },
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "deny",
      "rule_number" : 300
    }
  ]

  public_outbound_acl_rules = [
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "deny",
      "rule_number" : 200
    },
    {
      "cidr_block" : "0.0.0.0/0",
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "deny",
      "rule_number" : 300
    }
  ]


  private_dedicated_network_acl = true

  private_inbound_acl_rules = [
    {
      "cidr_block" : "10.15.0.0/25",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 200
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 300
    }
  ]

  private_outbound_acl_rules = [
    {
      "cidr_block" : "10.15.0.0/25",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 200
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 300
    }
  ]



  database_inbound_acl_rules = [
    {
      "cidr_block" : "10.15.0.0/25",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 200
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder block of the VPN VPC
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 300
    }
  ]

  database_dedicated_network_acl = true

  database_outbound_acl_rules = [
    {
      "cidr_block" : "10.15.0.0/25",
      "from_port" : 0,
      "protocol" : "-1",
      "rule_action" : "allow",
      "rule_number" : 100
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder CIDR block of the VPN VPC
      "from_port" : 22,
      "to_port" : 22,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 200
    },
    {
      "cidr_block" : "10.15.10.0/26", # Placeholder CIDR block of the VPN VPC
      "from_port" : 3389,
      "to_port" : 3389,
      "protocol" : "tcp",
      "rule_action" : "allow",
      "rule_number" : 300
    }
  ]


  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}




