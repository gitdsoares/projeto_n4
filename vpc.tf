#vpc
resource "aws_vpc" "VPC_teste" {
  cidr_block           = var.vpcCIDRblock
  instance_tenancy     = var.instanceTenancy
  enable_dns_support   = var.dnsSupport
  enable_dns_hostnames = var.dnsHostNames
  tags = {
    Name = "VPC teste"
  }
}

#subnets
resource "aws_subnet" "Public_subnet1" {
  vpc_id                  = aws_vpc.VPC_teste.id
  cidr_block              = var.publicsCIDRblock1
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "Public_subnet1"
  }
}

resource "aws_subnet" "Public_subnet2" {
  vpc_id                  = aws_vpc.VPC_teste.id
  cidr_block              = var.publicsCIDRblock2
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "Public_subnet2"
  }
}

resource "aws_subnet" "Private_subnet1" {
  vpc_id            = aws_vpc.VPC_teste.id
  cidr_block        = var.privatesCIDRblock1
  availability_zone = var.availabilityZone
  tags = {
    Name = "Private_subnet1"
  }
}

resource "aws_subnet" "Private_subnet2" {
  vpc_id            = aws_vpc.VPC_teste.id
  cidr_block        = var.privatesCIDRblock2
  availability_zone = var.availabilityZone
  tags = {
    Name = "Private_subnet2"
  }
}

#NACL
resource "aws_network_acl" "Public_NACL" {
  vpc_id     = aws_vpc.VPC_teste.id
  subnet_ids = [aws_subnet.Public_subnet1.id, aws_subnet.Public_subnet2.id]

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicdestCIDRblock
    from_port  = 80
    to_port    = 80
  }


  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicdestCIDRblock
    from_port  = 80
    to_port    = 80
  }
}

#igw
resource "aws_internet_gateway" "IGW_teste" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "Internet gateway teste"
  }
}

#routetable
resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "Public Route table"
  }
}

resource "aws_route_table" "Private_RT1" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "Private Route table 1"
  }
}

resource "aws_route_table" "Private_RT2" {
  vpc_id = aws_vpc.VPC_teste.id
  tags = {
    Name = "Private Route table 2"
  }
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.Public_RT.id
  destination_cidr_block = var.publicdestCIDRblock
  gateway_id             = aws_internet_gateway.IGW_teste.id
}

resource "aws_route_table_association" "Private_association1" {
  route_table_id = aws_route_table.Private_RT1.id
  subnet_id      = aws_subnet.Private_subnet1.id
}

resource "aws_route_table_association" "Private_association2" {
  route_table_id = aws_route_table.Private_RT2.id
  subnet_id      = aws_subnet.Private_subnet2.id

}
