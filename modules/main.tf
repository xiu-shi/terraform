provider "aws" {
  region = "eu-west-1"
}
# Terraform configuration for AWS VPC with two subnets, an internet gateway, and a route table.
# Init
# Plan
# Apply
# Destroy



# VPC
resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
  tags = {
    name = "main-tf-vpc"
  }
}

# Subnet 1
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "eu-west-1a"
  tags = {
    name = "main-tf-subnet1"
  }
} 

# Subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.2.0/24"
  availability_zone = "eu-west-1b"
  tags = {
    name = "main-tf-subnet2"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    name = "main-vpc-igw"
  }
}

# Route Table
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    name = "main-tf-route-table"
  }
}

# Route Table Association for Subnet 1
resource "aws_route_table_association" "subnet1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.main.id
}

# Route Table Association for Subnet 2
resource "aws_route_table_association" "subnet2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.main.id
}