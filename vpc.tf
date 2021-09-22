#vpc
resource "aws_vpc" "VPC_teste" {
  cidr_block           = var.vpcCIDRblock
  instance_tenancy     = var.instanceTenancy
  enable_dns_support   = var.dnsSupport
  enable_dns_hostnames = var.dnsHostNames
  tags = {
    Name = local.vpc_name
  }
}

#subnets
resource "aws_subnet" "Public_subnet1" {
  vpc_id                  = aws_vpc.VPC_teste.id
  cidr_block              = var.publicsCIDRblock1
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone1
  tags = {
    Name = local.public_sub1_name
  }
}

resource "aws_subnet" "Public_subnet2" {
  vpc_id                  = aws_vpc.VPC_teste.id
  cidr_block              = var.publicsCIDRblock2
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone2
  tags = {
    Name = local.public_sub2_name
  }
}

resource "aws_subnet" "Private_subnet1" {
  vpc_id            = aws_vpc.VPC_teste.id
  cidr_block        = var.privatesCIDRblock1
  availability_zone = var.availabilityZone1
  tags = {
    Name = local.private_sub1_name
  }
}

resource "aws_subnet" "Private_subnet2" {
  vpc_id            = aws_vpc.VPC_teste.id
  cidr_block        = var.privatesCIDRblock2
  availability_zone = var.availabilityZone2
  tags = {
    Name = local.private_sub2_name
  }
}