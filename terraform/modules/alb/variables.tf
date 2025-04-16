variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "alb_security_group_ids" {
  description = "The security group IDs for the ALB"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "The public subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "alb_port" {
  description = "The port for the ALB"
  type        = number
}