resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = module.vpc_prod.vpc_id

  tags = {
    Name = "site_to_site_Vpn"
  }
}

resource "aws_customer_gateway" "SOA_customer_gateway" {
  bgp_asn    = 65000
  ip_address = var.customer_gateway_ip
  type       = "ipsec.1"
}

resource "aws_vpn_connection" "SOA_site_to_site_vpn_connection" {
  vpn_gateway_id      = aws_vpn_gateway.vpn_gw.id
  customer_gateway_id = aws_customer_gateway.SOA_customer_gateway.id
  type                = "ipsec.1"
  static_routes_only  = true
}