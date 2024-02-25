resource "aws_eip" "bastion" {
  count    = var.assign_eip ? 1 : 0
  domain   = "vpc"
  instance = aws_instance.ec2.id
  tags     = local.common_tags
}