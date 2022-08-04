resource "aws_vpc" vpc1{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "myvpc"
    }

}
resource "aws_subnet" "private_subnet"{
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "10.0.0.0/20"
    availability_zone = "ap-soth-1a"
    tags={
        Name = "Private_subnet"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id=aws_vpc.vpc1.id
    cidr_block = "10.0.16.0/20"
    availability_zone ="ap-south-1b"
    map_public_ip_on_launch = true
    tags = {
        Name= "Public_subnet"
    }
  
}