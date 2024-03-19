output "vpc_id" {
    value = aws_vpc.my_VPC.id
}

output "subnet_ids" {
    value = aws_subnet.subnets.*.id
}