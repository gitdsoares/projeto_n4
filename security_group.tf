resource "aws_security_group" "allow_http" {
  vpc_id      = aws_vpc.VPC_teste.id
  name        = local.sg1_name
  description = "Allow http inbound traffic"

  ingress {
    description = "http into VPC"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.rule_protocol
    cidr_blocks = [var.publicsCIDRblock1, var.publicsCIDRblock2, var.privatesCIDRblock1, var.privatesCIDRblock2]
  }

  egress {
    description = "Outbound Allowed"
    from_port   = var.n_port
    to_port     = var.n_port
    protocol    = var.rule_protocol
    cidr_blocks = [var.publicdestCIDRblock]
  }
}