# resource "aws_customer_gateway" "SOA_customer_gateway" {
#   bgp_asn    = 65000
#   ip_address = "172.0.0.1"
#   type       = "ipsec.1"
# }
# resource "aws_vpn_connection" "SOA_vpn_connection" {
#   customer_gateway_id = aws_customer_gateway.SOA_customer_gateway.id
#   type                = "ipsec.1"
#   tags = {
#     Name = "SOA_vpn_connection"
#   }
# }
