variable "ami_id" {
  description = "ami id"
  type        = string
  default     = "ami-007855ac798b5175e"
}

variable "instance_type" {
  description = "ami id"
  type        = string
  default     = "t2.medium"
}

variable "associate_public_ip_address" {
  description = "provide the name for ec2 instance"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "provide the name for ec2 instance"
  type        = string
  default     = "frontend-instance"
}

variable "public_key" {
  description = "provide the name for ec2 instance"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTcOB1+n8HmrMj0VPegA6j/QfH+SK4GjsEVyR6jf/t9mvTNvkM9vC76Iw0+nTEaE2ePjx+7Xjx0krSOu3Ozh9NwOIMlkm+bVhfXru3jggIIddOYWk6lWl1Y1ntKLjXwDORiclfJakcHVje+3uA5gUMv3CYo7Lb7NRCf7cUO8JW4oljIxb//1twf5H+JQ1PjBfU+jl00LgDyNlFiqRL1tyJYrpwUbS3qF1eNXFjUvt4YEmRvC5+J/mlxzKjt0xIuLsdL8lK+7ic9nzpOCT96hSHVOz7cM15TYGcAyOmjrfV3OY2FW51JCHHdSSWTxzJORoanF21jCMOJArAtJrv8ScFPACmV8lVmvaM7gvcEHm+L4EC/nUghC5lk2t4SPnkPE7/pQMhXCiJMT0WwS7yZxJlo1xNQ7vzDtN8B1Rs5nVwwtZzS/EE5j2TwUPJRh3DzuNMwoEThzSsJXRe5O14iGg5YMGKAOC0dWRaKrt0+G+GFr/3mQRTXhRRL6oGooQsW6M= sohan@Sohan"
}

variable "ec2_name" {
  description = "provide the name for ec2 instance"
  type        = string
  default     = "frontend-instance"
}



variable "env_name" {
  description = "provide the name for ec2 instance"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "Provide the VPC ID of existing vpc in your AWS Account that you want to use for EC2 instane creation"
  type        = string
  default     = "vpc-0dde520dd03286b37"
}