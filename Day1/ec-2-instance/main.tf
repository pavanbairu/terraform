provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {

  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
}