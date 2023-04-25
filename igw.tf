resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "Stage-igw"
  }
  depends_on = [
    aws_vpc.vpc1
  ]
}