terraform {
  backend "s3" {
    bucket         = "terraform-state-yy-13"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = var.aws_region
}