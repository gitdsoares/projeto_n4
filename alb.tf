resource "aws_lb" "alb" {
  name               = local.alb_name
  internal           = var.alb_env
  load_balancer_type = var.alb_type
  security_groups    = [aws_security_group.allow_http.id]
  subnets            = [aws_subnet.Public_subnet1.id, aws_subnet.Public_subnet2.id]
  tags               = local.labels
}