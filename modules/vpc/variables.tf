variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR of public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR of private subnet"
  type        = string
}

variable "availability_zone" {
  type = string
}