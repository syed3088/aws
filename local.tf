locals {
  instance_name = "${terraform.workspace}-server"
}

locals {
  environment_name = "${terraform.workspace}-sg"
}
