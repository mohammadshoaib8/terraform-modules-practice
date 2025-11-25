/* VPC
 ├── 2 Public Subnets (a & b)
 ├── Internet Gateway
 ├── Public Route Table
 ├── Route Table Association (for both subnets)
 └── EC2 Instance (Ubuntu latest AMI) */

resource "aws_vpc" "myvpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.tag_name
  }
}

resource "aws_subnet" "suba" {
  availability_zone = "ap-southeast-1a"
  cidr_block        = var.sub1_cidr
  vpc_id            = aws_vpc.myvpc.id
  tags = {
    Name = var.tag_name
  }
}
resource "aws_subnet" "subb" {
  availability_zone = "ap-southeast-1b"
  cidr_block        = var.sub2_cidr
  vpc_id            = aws_vpc.myvpc.id
  tags = {
    Name = var.tag_name
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.tag_name
  }
}

resource "aws_route_table" "pubrt" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }
  tags = {
    Name = var.tag_name
  }
}

resource "aws_route_table_association" "rtmap1" {
  subnet_id = aws_subnet.suba.id
  #gateway_id     = aws_internet_gateway.myigw.id
  route_table_id = aws_route_table.pubrt.id
}

resource "aws_route_table_association" "rtmap2" {
  subnet_id = aws_subnet.subb.id
  #gateway_id     = aws_internet_gateway.myigw.id
  route_table_id = aws_route_table.pubrt.id
}

resource "aws_security_group" "mysg" {
  description = "allow ssh"
  vpc_id      = aws_vpc.myvpc.id
  name        = "devsg"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}