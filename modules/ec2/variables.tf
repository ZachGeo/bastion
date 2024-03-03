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

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "user_data" {
  default     = null
  description = "Specify data that should be passed to the instance at launch time"
  type        = string
}
