module "vpc" {
  source             = "./modules/VPC"
  cidr_block         = "10.0.0.0/16"
  vpc_name           = "project-vpc"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  ami               = "ami-04b4f1a9cf54c11d0"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
}
