terraform {
  backend "s3" {
    bucket = "aws-pavan-s3-bucket"
    key = "pavan/terraform.tfstate"
    region = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}