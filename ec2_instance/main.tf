resource "aws_instance" "my-instance" {
  count                       = var.count_instance
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = aws_key_pair.instance.key_name
  vpc_security_group_ids      = var.aws_security_group_id

  tags = {
    Environment = var.env_name
    Name        = "${var.ec2_name}-${count.index}"
  }
}

resource "aws_key_pair" "instance" {
  key_name   = var.key_name
  public_key = var.public_key
}
