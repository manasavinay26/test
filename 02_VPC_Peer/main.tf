provider "aws" {
  region = "eu-west-1"
}

resource "aws_vpc_peering_connection" "shared" {
  peer_owner_id = "181391122657"
  peer_vpc_id   = "vpc-0860d8c9ca00e66b7"
  vpc_id        = "vpc-0cd3098624fdce91e"
  
  
  tags = {
    "Name"     = "LegacyQA to sharedMain"
    "Resource" = "aws_vpc_peering_connection.shared"
   }
}
resource "aws_route" "private_route_legacy_qa_1" {
  route_table_id            = "rtb-0861599cb0cdff558"
  destination_cidr_block    = "10.168.8.0/23"
  vpc_peering_connection_id = aws_vpc_peering_connection.shared.id
  depends_on                = [aws_vpc_peering_connection.shared]
}

resource "aws_route" "private_route_legacy_qa_2" {
  route_table_id            = "rtb-0dcd4eef0b606445b"
  destination_cidr_block    = "10.168.8.0/23"
  vpc_peering_connection_id = aws_vpc_peering_connection.shared.id
  depends_on                = [aws_vpc_peering_connection.shared]
}

resource "aws_route" "private_route_legacy_qa_3" {
  route_table_id            = "rtb-0b8d504e4db94873f"
  destination_cidr_block    = "10.168.8.0/23"
  vpc_peering_connection_id = aws_vpc_peering_connection.shared.id
  depends_on                = [aws_vpc_peering_connection.shared]
}
