variable "instance_type" {
  description = "ec2 instance type"
  type        = map(string)
  default = {
    "small"  = "t2.micro"
    "medium" = "t2.nano"
    "large"  = "t3.large"
  }
}
variable "instance_ami" {
  description = "ec2 instance AMI"
  type        = map(string)
  default = {
    "ubuntu" = "ami-0f5ee92e2d63afc18"
    "linux"  = "ami-0ded8326293d3201b"
    "redhat" = "ami-008b85aa3ff5c1b02"
  }
}