resource "aws_instance" "server1" {
  ami                    = "ami-0b86aaed8ef90e45f"
  user_data              = file("script.sh")
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  availability_zone      = "us-east-1a"

  tags = {
    Name = "web-server"
    env  = "Dev"
  }
  depends_on = [aws_vpc.vp1, aws_subnet.public1, aws_security_group.sg-demo1]

}

resource "aws_instance" "server2" {
  ami                    = "ami-0b86aaed8ef90e45f"
  user_data              = file("script.sh")
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private2.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  availability_zone      = "us-east-1b"

  tags = {
    Name = "web-server2"
    env  = "Dev"
  }
  depends_on = [aws_vpc.vp1, aws_subnet.public1, aws_security_group.sg-demo1]

}