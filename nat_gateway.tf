resource "aws_nat_gateway" "nat_gw_1" {
  subnet_id         = aws_subnet.Public_subnet1.id
  connectivity_type = "private"
  tags = {
    Name = "gw NAT 1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.IGW_teste]
}

resource "aws_nat_gateway" "nat_gw_2" {
  subnet_id         = aws_subnet.Public_subnet2.id
  connectivity_type = "private"
  tags = {
    Name = "gw NAT 2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.IGW_teste]
}
