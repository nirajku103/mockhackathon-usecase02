
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones = ["eu-north-1a", "eu-north-1b"]

sg_name = "web-sg"
sg_description = "Security group for web servers"
sg_ingress_from_port = 80
sg_ingress_to_port = 80
sg_ingress_protocol = "tcp"
sg_ingress_cidr_blocks = ["0.0.0.0/0"]


ec2_ami_id = "ami-0274f4b62b6ae3bd5"  # Ensure this AMI ID is valid
ec2_instance_type = "t3.micro"

alb_name = "my-alb"
alb_port = 80

asg_name = "my-asg"
desired_capacity = 2
min_size = 2
max_size = 2
