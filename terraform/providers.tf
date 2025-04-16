
terraform {
  backend "s3" {
    bucket         = "mockhackathon-uc02"
    key            = "terraform"
    region         = "us-east-1"
  #  dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
