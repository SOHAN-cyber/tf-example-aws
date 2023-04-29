module "frontend_ec2" {
  source                      = "../ec2_instance/"
  ami_id                      = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  public_key                  = var.public_key
  ec2_name                    = var.ec2_name
  env_name                    = var.env_name
  aws_security_group_id       = [aws_security_group.frontend-sg.id]
}

resource "aws_security_group" "frontend-sg" {
  name        = "frontend-sg"
  description = "Allow the traffic that can go outside and inside the instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allowing SSH to the Instance"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "frontend-sg"
  }
}