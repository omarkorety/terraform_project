resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.tera-vpc.id
  cidr_block        = var.private1_cidr
  availability_zone = var.Az1
  tags = {
    Name = "private_1"
  }
}
###################################################################################
resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.tera-vpc.id
  cidr_block        = var.private2_cidr
  availability_zone = var.Az2
  tags = {
    Name = "private_1"
  }
}