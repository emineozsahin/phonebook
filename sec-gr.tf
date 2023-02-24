resource "aws_security_group" "alb-sg" {
  name        = "ALBsg"
  vpc_id      = data.aws_vpc.selected.id

  tags = {
    Name = "TF_albsg"
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}