provider "aws" {
  region = "ap-southeast-1"
}
module "vpc" {
  source    = "../../modules/vpc"
  vpc_cidr  = var.vpc_cidr
  sub1_cidr = var.sub1_cidr
  sub2_cidr = var.sub2_cidr
  tag_name  = var.tag_name
}

module "ec2" {
  source         = "../../modules/ec2"
  instance_type  = var.instance_type
  key_pair       = var.key_pair
  az             = var.az
  tag_name       = var.tag_name
  security_group = module.vpc.security_group
  subnet_id      = module.vpc.subnet1
}