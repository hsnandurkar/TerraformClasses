module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_cidr  = "10.0.1.0/24"
  az           = "us-east-1a"
  subnet_cidr2 = "10.0.2.0/24"
  az2          = "us-east-1b"
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-00e801948462f718a"  # Replace with valid AMI
  instance_type = "t3.micro"
  subnet_id     = module.vpc.subnet_ids[0]
}

module "rds" {
  source         = "./modules/rds"
  subnet_id      = module.vpc.subnet_ids[0]
  subnet_id2     = module.vpc.subnet_ids[1]
  instance_class = "db.t3.micro"
  db_name        = "mydb"
  db_user        = "admin"
  db_password    = "Admin12345"
}

