resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zone
  cidr_block        = var.public_subnet_cidr_block
  tags              = local.common_tags
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zone
  cidr_block        = var.private_subnet_cidr_block
  tags              = local.common_tags
}