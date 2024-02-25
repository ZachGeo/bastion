module "bastion" {
  source = "../modules/ec2"

  subnet_id              = module.vpc_bastion.public_subnet_id
  vpc_security_group_ids = [module.vpc_bastion.public_security_group_id]
  availability_zone      = "eu-central-1a" 
  assign_eip             = true
  instance_name          = "Bastion"
}

module "private-ec2" {
  source = "../modules/ec2"

  subnet_id              = module.vpc_bastion.private_subnet_id
  vpc_security_group_ids = [module.vpc_bastion.private_security_group_id]
  availability_zone      = "eu-central-1a"
  assign_key_pair        = true
  key_name               = "private-key" 
  public_key             = file("/home/zachariasg/.ssh/id_ed25519_bastion_aws.pub") 
  instance_name          = "Private" 
}

module "vpc_bastion" {
  source = "../modules/vpc"

  vpc_cidr_block            = "10.0.0.0/22"
  public_subnet_cidr_block  = "10.0.1.0/28"
  private_subnet_cidr_block = "10.0.3.0/28"
  availability_zone         = "eu-central-1a"
}
