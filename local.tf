locals {
  instance_name = "${terraform.workspace}-instance"
}

locals {
  environment_name = "${terraform.workspace}-sg"
}
/*locals {
  bucket_name = "${terraform.workspace}-devops-3088-tf-state"
}*/