provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "main" {
  cidr_block       = "172.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}