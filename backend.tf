terraform {
  backend "s3" {
    bucket         = "devops-3088-tf-state" # REPLACE WITH YOUR BUCKET NAME
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}