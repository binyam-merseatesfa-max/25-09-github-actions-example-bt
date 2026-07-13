provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Environment  = "Test-bt"
      Tagged-to-be = "Example-tags bt"
    }
  }
}

resource "aws_instance" "instanz-101" {
  count         = 2
  ami           = "ami-0303e2e4a29f041a3"
  instance_type = var.instance_type
}


