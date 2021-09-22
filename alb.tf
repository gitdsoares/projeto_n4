resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_http.id]
  subnets            = [aws_subnet.Public_subnet1.id, aws_subnet.Public_subnet2.id]

  tags = {
    Environment = "production"
  }
}