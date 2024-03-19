module "vpc" {
    source = "./modules/VPC"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
}

module "sg" {
    source = "./modules/Security_Groups"
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
    source = "./modules/EC2"
    sg_id = module.sg.sg_id
    subnets = module.vpc.subnet_ids
}

module "alb" {
    source = "./modules/Application_Load_Balancer"
    sg_id = module.sg.sg_id
    subnets = module.vpc.subnet_ids
    vpc_id = module.vpc.vpc_id
    instances = module.ec2.instances
}