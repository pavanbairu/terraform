provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2-instance" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "aws-pavan-s3-bucket"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


