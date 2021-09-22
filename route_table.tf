resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "${var.customer}-public-rt-${terraform.workspace}"
  }
}

resource "aws_route_table" "Private_RT1" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "${var.customer}-private-rt1-${terraform.workspace}"
  }
}

resource "aws_route_table" "Private_RT2" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = local.pvt_rt2
  }
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.Public_RT.id
  destination_cidr_block = var.publicdestCIDRblock
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "Private_association1" {
  route_table_id = aws_route_table.Private_RT1.id
  subnet_id      = aws_subnet.Private_subnet1.id
}

resource "aws_route_table_association" "Private_association2" {
  route_table_id = aws_route_table.Private_RT2.id
  subnet_id      = aws_subnet.Private_subnet2.id

}