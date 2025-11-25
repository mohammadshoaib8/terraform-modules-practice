output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "subnet1" {
  value = aws_subnet.suba.id
}
output "subnet2" {
  value = aws_subnet.subb.id
}
output "internet_gateway" {
  value = aws_internet_gateway.myigw.id
}
output "route_table" {
  value = aws_route_table.pubrt.id
}
output "security_group" {
  value = aws_security_group.mysg.id
}
