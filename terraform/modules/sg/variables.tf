
variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "The description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "ingress_from_port" {
  description = "The ingress from port"
  type        = number
}

variable "ingress_to_port" {
  description = "The ingress to port"
  type        = number
}

variable "ingress_protocol" {
  description = "The ingress protocol"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The ingress CIDR blocks"
  type        = list(string)
}
