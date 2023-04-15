variable "count_instance" {
  description = "Number of ec2 instances you want to create"
  type = number
  default = 1
}

variable "ami_id" {
  description = "Provide the AMI ID of instance that you want to create example: Ubuntu,Amazon or Windows"
  type = string
  default = "ami-007855ac798b5175e"
}

variable "key_name" {
  description = "provide the key name that you want to create for ec2 instance"
  type =string
  default = "demo-key"
}

variable "public_key" {
  description = "public key of your ec2 instance"
  type = string
}

variable "aws_security_group_id" {
  description = "provide the security group  for your ec2 instace"
}

variable "env_name" {
  description = "provide the enviornment namme for which you're creating ec2 instance"
  type = string
  default = "demo"
}

variable "ec2_name" {
  description = "provide the name for ec2 instance"
  type = string
  default = "demo"
}

variable "instance_type" {
  description = "Ec2 instance type that you want to use"
  type = string
  default = "t2.micro"
}

variable "associate_public_ip_address" {
  description = "Do you want to attach public IP or not"
  type = bool
  default = false
}

variable "region" {
  description = "Which region you want to use  in your aws for resource provising"
  type        = string
  default     = "us-east-1"
}

variable "username" {
  description = "Provide the username as per AMI ID"
  type        = string
  default     = "ubuntu"
}