variable "vpc_cidr" {
    description = "VPC CIDR range"
    type=string
}

variable "subnet_cidr" {
    description = "Subnets CIDR range"
    type=list(string)
}