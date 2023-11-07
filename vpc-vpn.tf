module "vpc_vpn" {
  source = "terraform-aws-modules/vpc/aws"
  
  providers = {
    aws = aws.us-east 
  }
  name            = var.vpc_name_vpn
  cidr            = var.vpc_cidr_block_vpn
  azs             = var.vpc_availability_zones_vpn
  public_subnets  = var.vpc_public_subnets_vpn

  tags = {
    name = "vpc-vpn"
  }
}