resource "aws_instance" "apache" {

  ami           = "ami-0bf97847fcd5c9f57"
  instance_type = "t2.micro"
  key_name      = "backend"
  subnet_id     = aws_subnet.private_subnet1.id
  security_groups = [aws_security_group.apache-sg.id]
  user_data = file("apache.sh")

  tags = {
    Name = "apache"
  }
}