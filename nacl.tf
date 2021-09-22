resource "aws_network_acl" "Public_NACL" {
  vpc_id     = aws_vpc.VPC_teste.id
  subnet_ids = [aws_subnet.Public_subnet1.id, aws_subnet.Public_subnet2.id]

  ingress {
    protocol   = var.rule_protocol
    rule_no    = var.rule_prio
    action     = var.rule_action1
    cidr_block = var.publicdestCIDRblock
    from_port  = var.http_port
    to_port    = var.http_port
  }

  egress {
    protocol   = var.rule_protocol
    rule_no    = var.rule_prio
    action     = var.rule_action1
    cidr_block = var.publicdestCIDRblock
    from_port  = var.http_port
    to_port    = var.http_port
  }
}