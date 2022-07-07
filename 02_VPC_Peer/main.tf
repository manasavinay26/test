provider "aws" {
  region = "eu-west-1"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test_VPC_1"
  }
}
