provider "aws" {
  region = "us-east-1"
}

module "instance" {
  source = "./modules/ec2-instance"
  ami-id= "ami-03265a0778a880afb"
  instance-type = "t2.micro"
}