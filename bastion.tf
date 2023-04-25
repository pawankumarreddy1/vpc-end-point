resource "aws_instance" "bastion" {

  ami           = "ami-0bf97847fcd5c9f57"
  instance_type = "t2.micro"
  key_name      = "backend"
  subnet_id     = aws_subnet.public_subnet1.id

  security_groups = [aws_security_group.bastion-sg.id]
  tags = {
    Name = "bastion"
  }
}