resource "aws_nat_gateway" "nat_gw_1" {
  subnet_id         = aws_subnet.Public_subnet1.id
  connectivity_type = var.ngw_conn

  tags = {
    Name = local.ngw1_name
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat_gw_2" {
  subnet_id         = aws_subnet.Public_subnet2.id
  connectivity_type = var.ngw_conn
  tags = {
    Name = local.ngw2_name
  }

  depends_on = [aws_internet_gateway.igw]
}
