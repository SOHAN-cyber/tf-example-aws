resource "aws_instance" "my-instance" {
  count = 3
  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = aws_key_pair.my-instance.key_name
  vpc_security_group_ids      = [aws_security_group.my-instance-sg.id]
  lifecycle {
   create_before_destroy = true
  }
  tags = {
    Environment = "dev"
    Name        = "my-first-tf-ec2-${count.index}"
  }
}

resource "aws_key_pair" "my-instance" {
  key_name   = "my-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTcOB1+n8HmrMj0VPegA6j/QfH+SK4GjsEVyR6jf/t9mvTNvkM9vC76Iw0+nTEaE2ePjx+7Xjx0krSOu3Ozh9NwOIMlkm+bVhfXru3jggIIddOYWk6lWl1Y1ntKLjXwDORiclfJakcHVje+3uA5gUMv3CYo7Lb7NRCf7cUO8JW4oljIxb//1twf5H+JQ1PjBfU+jl00LgDyNlFiqRL1tyJYrpwUbS3qF1eNXFjUvt4YEmRvC5+J/mlxzKjt0xIuLsdL8lK+7ic9nzpOCT96hSHVOz7cM15TYGcAyOmjrfV3OY2FW51JCHHdSSWTxzJORoanF21jCMOJArAtJrv8ScFPACmV8lVmvaM7gvcEHm+L4EC/nUghC5lk2t4SPnkPE7/pQMhXCiJMT0WwS7yZxJlo1xNQ7vzDtN8B1Rs5nVwwtZzS/EE5j2TwUPJRh3DzuNMwoEThzSsJXRe5O14iGg5YMGKAOC0dWRaKrt0+G+GFr/3mQRTXhRRL6oGooQsW6M= sohan@Sohan"
}

resource "aws_security_group" "my-instance-sg" {
  name        = "my-instance-sg"
  description = "Allow the traffic that can go outside and inside the instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allowing SSH to the Instance"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["203.192.214.113/32"]
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
    Name = "my-instance-sg"
  }
}