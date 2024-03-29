resource "aws_route_table" "public" {
  vpc_id  = aws_vpc.main.id
  tags    = local.common_tags
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

}

resource "aws_route_table_association" "public_route_asc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id  = aws_vpc.main.id
  tags    = local.common_tags
}

resource "aws_route_table_association" "private_route_asc" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
