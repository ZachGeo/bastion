variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "availability_zone" {
  type = string
}

variable "vpc_security_group_ids" {
  description = "Security group IDs of instance"
  type        = list(string)
}

variable "subnet_id" {
  type = string
}

variable "assign_eip" {
  default     = false
  description = "Boolean value to assign elastic IP or not on the ec2 instance"
  type        = bool
}

variable "key_name" {
  default     = null
  description = "SSH key name of ec2 instance"
  type        = string
}

variable "public_key" {
  default     = ""
  description = "Filepath of public key"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "assign_key_pair" {
  default     = false
  description = "Boolean value to create or not ssh key for ec2 instance"
  type        = bool
}
