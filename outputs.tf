output "instance_ip_addr" {
  value = aws_instance.ec2_instance.public_ip
}

