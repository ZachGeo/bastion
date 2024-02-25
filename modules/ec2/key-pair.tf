resource "aws_key_pair" "private" {
  count      = var.assign_key_pair ? 1 : 0
  key_name   = var.key_name
  public_key = var.public_key
}