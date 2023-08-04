#resources block
resource "aws_instance" "ec2_instance" {
  #ami           = "ami-0889a44b331db0194"
  #instance_type = "t2.micro"
  #ami = var.instance_ami["linux"]
  ami             = "${terraform.workspace}" == "rnd" ? var.instance_ami["ubuntu"] : var.instance_ami["linux"]
  instance_type   = "${terraform.workspace}" == "rnd" ? var.instance_type["small"] : var.instance_type["medium"]
  security_groups = [aws_security_group.ec2_instance.name]
  tags = {
    Name = local.instance_name
    #Name = "Terraform EC2"
  }
}
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = aws_instance.ec2_instance.availability_zone
  size              = 8
  tags = {
    Name = "ebs_volume1"
  }
}

resource "aws_volume_attachment" "instance_ec2-vol" {

  device_name  = "/dev/sdh"
  volume_id    = aws_ebs_volume.ebs_volume.id
  instance_id  = aws_instance.ec2_instance.id
  force_detach = true
}