terraform {
  backend "s3" {
    bucket = "terraform-backend-pyproject"
    key    = "path/"
    region = "us-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
#  shared_credentials_files = "/Users/u27j40/.aws/credentials"
#  profile                 = "abhishek"
  region                  = "us-west-2"
}