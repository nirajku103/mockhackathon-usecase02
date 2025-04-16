
variable "source_instance_id" {
  description = "The ID of the source EC2 instance to create an AMI from."
  type        = string
}

variable "ami_name" {
  description = "The name of the AMI to be created."
  type        = string
}