resource "aws_instance" "ec2" {
  count =   length(var.ec2_names)
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]


  tags = {
    Name = var.ec2_names[count.index]
  }
}