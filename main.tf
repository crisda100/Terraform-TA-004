resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "hcp-vpc"
    Environment = "develop"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name        = "main-subnet"
    Environment = "develop"

  }
}