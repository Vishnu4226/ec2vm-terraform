provider "aws" {
  region  = "us-west-2"
}
terraform {
  backend "remote" {
    organization = "testorg-prod"

    workspaces {
      name = "ec2vm-terraform"
    }
  }
}