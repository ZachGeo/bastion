variable "instance_type" {
  default = "t2.micro"
  description = ""
  type = string
}

variable "availability_zone" {
  description = ""
  type = string
}

variable "vpc_security_group_ids" {
  description = ""
  type = list(string)
}

variable "subnet_id" {
  description = ""
  type = string
}

variable "assign_eip" {
  default = false
  description = ""
  type = bool
}

variable "key_name" {
  default = null
  description = ""
  type = string
}

variable "public_key" {
  default = ""
  description = ""
  type = string
}

variable "instance_name" {
  description = ""
  type = string
}

variable "assign_key_pair" {
  default = false
  description = ""
  type = bool
}
