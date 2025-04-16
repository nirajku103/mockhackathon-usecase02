resource "aws_instance" "web" {
  count         = 1
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = element(var.subnets, count.index)
  security_groups = [aws_security_group.web_sg.id]

  user_data = file("${path.module}/openproject.sh")

  tags = {
    Name = "openproject-instance"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow HTTP and SSH traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb_target_group_attachment" "openproject" {
  target_group_arn  = var.alb_target_group_arn[0]
  target_id         = aws_instance.web[0].id
  port              = 8080
}