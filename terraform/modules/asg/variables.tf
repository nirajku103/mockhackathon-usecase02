
variable "name" {
  description = "The name of the ASG"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs for the instances"
  type        = list(string)
}

variable "security_group_ids" {
  description = "The security group IDs for the instances"
  type        = list(string)
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

variable "user_data" {
  description = "The user data script for the instances"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the target group"
  type        = string
}
