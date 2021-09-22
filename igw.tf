resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = local.igw_name
  }
}