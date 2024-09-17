provider "aws" {
  region = "eu-west-3"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.vpc_cidr_block

  azs             = [var.availability_zone]
  public_subnets  = [var.subnet_cidr_block]
  public_subnet_tags = {
      name = "${var.env_prefix}-subnet-1"

  }

  tags = {
  name = "${var.env_prefix}-vpc"
  }
}

module "myapp-server" {
  source = "./modules/webserver"
  vpc_id = module.vpc.vpc_id
  my_ip =var.my_ip
  env_prefix=var.env_prefix
  image_name=var.image_name
  public_key_location =var.public_key_location
  private_key_location=var.private_key_location
   instance_type = var.instance_type
  subnet_id=module.vpc.public_subnets[0]
  default_sg_id=var.aws_default_security_group.default-sg
  availability_zone=var.availability_zone
 
}

