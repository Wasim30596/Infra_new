resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "vpc_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.env}-subnet"
  }
}

output "subnetid" {
  value = aws_subnet.vpc_subnet.id
  description = "The Subnet which my EC2 will be created"
} 