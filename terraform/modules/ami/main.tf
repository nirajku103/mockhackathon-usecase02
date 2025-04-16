

resource "aws_ami" "custom" {
  name                = var.ami_name
  source_instance_id  = var.source_instance_id
  virtualization_type = "hvm"
  tags = {
    Name = var.ami_name
  }
}
