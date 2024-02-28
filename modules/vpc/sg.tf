resource "aws_security_group" "bastion" {
  name        = "bastion-sg"
  description = "Security Group of Bastion instance"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "allow-ssh-from-anywhere" {
  type              = "ingress"
  description       = "SSH ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.bastion.id
}

resource "aws_security_group_rule" "allow-all-outbound-traffic" {
  type              = "egress"
  description       = "Allow all outbound traffic"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.bastion.id
}

resource "aws_security_group" "private" {
  name        = "private-sg"
  description = "Security Group of Bastion instance"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "allow-ssh-from-bastion" {
  type                      = "ingress"
  description               = "SSH ingress"
  from_port                 = 22
  to_port                   = 22
  protocol                  = "tcp"
  source_security_group_id  = aws_security_group.bastion.id
  security_group_id         = aws_security_group.private.id
}
