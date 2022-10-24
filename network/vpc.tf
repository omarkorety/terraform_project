resource "aws_vpc" "tera-vpc" {
  cidr_block = var.my_vpc_cidr

  tags = {
    Name = "tera-vpc"
  }
}
#############################################################
#ELASTC IP
resource "aws_eip" "lb" {
  vpc = true
}