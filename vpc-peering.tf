# resource "aws_vpc_peering_connection" "foo" {
#   peer_vpc_id   = aws_vpc.bar.id
#   vpc_id        = module.vpc.vpc_id
#   auto_accept   = false
#   tags = {
#     Name = "VPC Peering between SOA VPC-1 and SOA VPC-2"
#   }
# }