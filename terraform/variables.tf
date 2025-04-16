variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "sg_ingress_from_port" {
  description = "The ingress from port"
  type        = number
}

variable "sg_ingress_to_port" {
  description = "The ingress to port"
  type        = number
}

variable "sg_ingress_protocol" {
  description = "The ingress protocol"
  type        = string
}

variable "sg_ingress_cidr_blocks" {
  description = "The ingress CIDR blocks"
  type        = list(string)
}

variable "ec2_ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "alb_port" {
  description = "The port for the ALB"
  type        = number
}

variable "asg_name" {
  description = "The name of the ASG"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity for the ASG"
  type        = number
}

variable "min_size" {
  description = "The minimum size for the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum size for the ASG"
  type        = number
}