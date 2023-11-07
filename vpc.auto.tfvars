# VPC Stage Variable
aws_region_stage             = "us-west-2"
vpc_name_stage               ="SOA-vpc-stage"
vpc_cidr_block_stage         = "10.15.0.0/23"
vpc_availability_zones_stage = ["us-west-2a", "us-west-2b"]
vpc_public_subnets_stage     = ["10.15.0.0/26", "10.15.0.64/26"]
vpc_private_subnets_stage    = ["10.15.0.128/26", "10.15.0.192/26"]
vpc_database_subnets_stage   = ["10.15.1.0/26", "10.15.1.64/26"]

# VPC Prod Variable


aws_region_prod            = "us-west-2"
vpc_name_prod               = "SOA-vpc-prod"
vpc_cidr_block_prod         = "10.16.0.0/23"
vpc_availability_zones_prod = ["us-west-2a", "us-west-2b"]
vpc_public_subnets_prod     = ["10.16.0.0/26", "10.16.0.64/26"]
vpc_private_subnets_prod    = ["10.16.0.128/26", "10.16.0.192/26"]
vpc_database_subnets_prod   = ["10.16.1.0/26", "10.16.1.64/26"]

# VPC VPN Variable

aws_region_vpn              = "us-east-1"
vpc_name_vpn                = "SOA-vpc-prod"
vpc_cidr_block_vpn          = "10.17.0.0/23"
vpc_availability_zones_vpn  = ["us-east-1a", "us-east-1b"]
vpc_public_subnets_vpn     = ["10.17.0.0/26", "10.17.0.64/26"]
