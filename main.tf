module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
  tag_name  = var.tag_name
  sub1_cidr = var.sub1_cidr
  sub2_cidr = var.sub2_cidr
}

module "ec2" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  az             = var.az
  key_pair       = var.key_pair
  subnet_id      = module.vpc.subnet1
  tag_name       = var.tag_name
  security_group = module.vpc.security_group
}