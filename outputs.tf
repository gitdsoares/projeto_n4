output "vpc" {
  value = aws_vpc.VPC_teste.tags.Name
}

output "public_subnet1" {
  value = aws_subnet.Public_subnet1.tags.Name
}

output "public_subnet2" {
  value = aws_subnet.Public_subnet2.tags.Name
}

output "private_subnet1" {
  value = aws_subnet.Private_subnet1.tags.Name
}

output "private_subnet2" {
  value = aws_subnet.Private_subnet2.tags.Name
}

output "launch_template" {
  value = aws_launch_template.template.name_prefix
}

output "asg" {
  value = aws_autoscaling_group.asg.name
}

output "igw" {
  value = aws_internet_gateway.igw.tags.Name
}

output "ngw1" {
  value = aws_nat_gateway.nat_gw_1.tags.Name
}

output "ngw2" {
  value = aws_nat_gateway.nat_gw_2.tags.Name
}

output "public_rt" {
  value = aws_route_table.Public_RT.tags.Name
}

output "private_rt1" {
  value = aws_route_table.Private_RT1.tags.Name
}

output "private_rt2" {
  value = aws_route_table.Private_RT2.tags.Name
}

output "sg1" {
  value = aws_security_group.allow_http.name
}