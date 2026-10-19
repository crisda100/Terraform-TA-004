terraform {

  required_version = "~> 1.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.66.0"
    }
  }
  cloud {

    organization = "crisda-hcp"

    workspaces {
      name = "hcp-demo"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
