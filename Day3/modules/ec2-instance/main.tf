
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami = var.ami-id
  instance_type = var.instance-type
}