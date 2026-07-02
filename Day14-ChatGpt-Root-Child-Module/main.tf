module "vpc" {
  source = "./modules/vpc"
  cidr_block  = var.cidr_block

  subnet_cidr  = var.subnet_cidr
  az           = var.az

  subnet_cidr2 = var.subnet_cidr2
  az2          = var.az2
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = module.vpc.subnet_ids[0]
  vpc_id    = module.vpc.vpc_id
}

module "rds" {
  source = "./modules/rds"

  subnet_ids     = module.vpc.subnet_ids
  instance_class = var.instance_class

  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
}