resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags       = local.common_tags
}
