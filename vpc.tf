provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYS2NSRDTTYLSQZIB"
  secret_key = "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"
}

resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "new_vpc"
  }
}
resource "aws_subnet" "pubsub" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub_subnet"
  }
}
