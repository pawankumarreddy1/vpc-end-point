resource "aws_eip" "eip" {
  vpc = true
  tags = {
    Name = "Stage-EIP"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "Stage-Natgw"
  }
  depends_on = [
    aws_eip.eip
  ]
}