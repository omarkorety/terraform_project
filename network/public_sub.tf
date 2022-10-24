resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.tera-vpc.id
  cidr_block        = var.public1_cidr
  availability_zone = var.Az1

  tags = {
    Name = "pub_1"
  }
}
############################################################
resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.tera-vpc.id
  cidr_block        = var.public2_cidr
  availability_zone = var.Az2
  tags = {
    Name = "pub_1"
  }
}