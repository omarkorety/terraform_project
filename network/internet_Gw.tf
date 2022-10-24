resource "aws_internet_gateway" "tera-gw" {
  vpc_id = aws_vpc.tera-vpc.id

  tags = {
    Name = "tera-gw"
  }
}