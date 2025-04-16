
resource "aws_instance" "web" {
  count = 2
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = element(var.subnet_ids, count.index)
  vpc_security_group_ids = var.security_group_ids
  associate_public_ip_address = true

  lifecycle {
    ignore_changes = [
      ami,
      instance_type,
    ]
  }

  tags = {
    Name = "WebServer-${count.index}"
  }
}
