output "public_ip" {
  value     = aws_instance.my-instance.*.public_ip
}

output "instance_id" {
  value = aws_instance.my-instance.*.id
}