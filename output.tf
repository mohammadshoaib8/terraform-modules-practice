output "vpc_id" {
  value = module.vpc.vpc_id
}

output "instance_id" {
  value = module.ec2.instance_id
}
output "subnet1" {
  value = module.vpc.subnet1
}
output "subnet2" {
  value = module.vpc.subnet2
}
output "internet_gateway" {
  value = module.vpc.internet_gateway
}
output "route_table" {
  value = module.vpc.route_table
}
output "security_group" {
  value = module.vpc.security_group
}