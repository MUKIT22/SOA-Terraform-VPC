# VPC Variables
aws_region             = "us-west-2"
vpc_name               = "SOA-vpc"
vpc_cidr_block         = "10.15.0.0/23"
vpc_availability_zones = ["us-west-2a", "us-west-2b"]
vpc_public_subnets     = ["10.15.0.0/26", "10.15.0.64/26"]
vpc_private_subnets    = ["10.15.0.128/26", "10.15.0.192/26"]
vpc_database_subnets   = ["10.15.1.0/26", "10.15.1.64/26"]
