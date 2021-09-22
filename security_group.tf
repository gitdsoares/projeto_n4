resource "aws_security_group" "allow_http" {
  vpc_id      = aws_vpc.VPC_teste.id
  name        = "allow_http"
  description = "Allow http inbound traffic"

  ingress {
    description = "http into VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Outbound Allowed"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}