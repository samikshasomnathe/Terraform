provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "kmkey"
}

resource "aws_instance" "app-server" {
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "kmkey"
}
