terraform {
  # configure the remote backend
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Tcloud_85"
    workspaces {
      name = "85-Twork-space"
    }
  }
  #required providers block
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

# configure the AWS provider
provider "aws" {
  region = "us-east-1"
}