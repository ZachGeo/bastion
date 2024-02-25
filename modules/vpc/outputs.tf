output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_security_group_id" {
  value = aws_security_group.private.id
}

output "public_security_group_id" {
  value = aws_security_group.bastion.id
}