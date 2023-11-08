##################################
# Create VPC Peering Connection between VPC Stage and VPC Prod
##################################
resource "aws_vpc_peering_connection" "vpc_peering_btn_vpc_stage_and_vpc_prod" {
  peer_vpc_id          = module.vpc_prod.vpc_id
  vpc_id               = module.vpc_stage.vpc_id
  auto_accept          = false  #'false' to not auto-approve the connection
}

#################################
#Create VPC Peering Connection between VPC Stage and VPN VPC
#################################
resource "aws_vpc_peering_connection" "vpc_peering_btn_vpc_vpn_and_vpc_stage" {
  peer_vpc_id          = module.vpc_vpn.vpc_id
  vpc_id               = module.vpc_stage.vpc_id
  auto_accept          = false  # 'false' to not auto-approve the connection
  peer_region          = "us-east-1"
}


##################################
# Create VPC Peering Connection between VPC Pro and VPN VPC
##################################
resource "aws_vpc_peering_connection" "vpc_peering_btn_vpc_vpn_and_vpc_prod" {
  peer_vpc_id          = module.vpc_vpn.vpc_id
  vpc_id               = module.vpc_prod.vpc_id
  auto_accept          = false  #'false' to not auto-approve the connection
  peer_region          = "us-east-1"
}
