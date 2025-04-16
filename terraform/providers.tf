
terraform {
  backend "s3" {
    bucket         = "mockhackathon-uc02"
    key            = "terraform"
    region         = "eu-north-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-north--1"
}
