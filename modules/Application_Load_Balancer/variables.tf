variable "sg_id" {
    description = "SG ID for Application load balancer"
    type = string
}

variable "subnets" {
    description = "Subnets for Application load balancer"
    type = list(string)
}

variable "vpc_id" {
    description = "VPC ID  for Application load balancer"
    type = string
}

variable "instances" {
    description = "Instance ID  for Application load balancer"
    type = list(string)
}