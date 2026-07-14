provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Environment  = "Test-bt STG"
      Tagged-to-be = "Example-tags bt STG"
    }
  }
}

resource "aws_instance" "instanz-201" {
  count         = var.instance_count
  ami           = "ami-0303e2e4a29f041a3"
  instance_type = var.instance_type
  key_name      = "keyP1"
  tags = {
    Name = "mySTG-EC2-instanz"
  }
}