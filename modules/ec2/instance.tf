data "aws_ami" "ubuntu-jammy" {
  most_recent = true
  owners      = [ "099720109477" ]

  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20231207" ]
  }
}

resource "aws_instance" "ec2" {
  instance_type           = var.instance_type
  ami                     = data.aws_ami.ubuntu-jammy.id
  availability_zone       = var.availability_zone
  vpc_security_group_ids  = var.vpc_security_group_ids
  subnet_id               = var.subnet_id
  key_name                = var.key_name
  tags                    = merge(
    local.common_tags,
    {
      Name = var.instance_name
    }
  )
}
