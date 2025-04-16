module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones = var.availability_zones
}

module "sg" {
  source = "./modules/sg"
  name = var.sg_name
  description = var.sg_description
  vpc_id = module.vpc.vpc_id
  ingress_from_port = var.sg_ingress_from_port
  ingress_to_port = var.sg_ingress_to_port
  ingress_protocol = var.sg_ingress_protocol
  ingress_cidr_blocks = var.sg_ingress_cidr_blocks
}

/*
module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  subnet_ids = module.vpc.public_subnet_ids
  security_group_ids = [module.sg.security_group_id]
}
*/
module "asg" {
  source = "./modules/asg"
  name = var.asg_name
  ami_id = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  subnet_ids = module.vpc.public_subnet_ids
  security_group_ids = [module.sg.security_group_id]
  desired_capacity = var.desired_capacity
  min_size = var.min_size
  max_size = var.max_size
  user_data = file("openproject.sh")
  target_group_arn = module.alb.target_group_arn
}

module "alb" {
  source = "./modules/alb"
  alb_name = var.alb_name
  alb_security_group_ids = [module.sg.security_group_id]
  public_subnet_ids = module.vpc.public_subnet_ids
  vpc_id = module.vpc.vpc_id
  alb_port = var.alb_port
}