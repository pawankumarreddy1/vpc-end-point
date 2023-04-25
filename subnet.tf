resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.216.0/21"
  map_public_ip_on_launch = true
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "public_subnet1a"
  }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.224.0/21"
  map_public_ip_on_launch = true
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "public_subnet1b"
  }
}
resource "aws_subnet" "public_subnet3" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.232.0/21"
  map_public_ip_on_launch = true
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "public_subnet1c"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.0.0/18"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "private_subnet1a"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.64.0/18"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "private_subnet1b"
  }
}

resource "aws_subnet" "private_subnet3" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.128.0/18"
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "private_subnet1c"
  }
}

resource "aws_subnet" "data_private_subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.192.0/21"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "data_subnet1a"
  }
}

resource "aws_subnet" "data_private_subnet2" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.200.0/21"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "data_subnet1b"
  }
}

resource "aws_subnet" "data_private_subnet3" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.208.0/21"
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "data_subnet1c"
  }
}