terraform {
  backend "s3" {
    bucket = "25-09-bt-tf-s3-bucket"
    key = "terraform.tfstate"
    region = "eu-central-1"
    
  }
}