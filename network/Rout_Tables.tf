resource "aws_route_table" "pubic-rt" {
  vpc_id = aws_vpc.tera-vpc.id
  route {
    cidr_block = var.all-route
    gateway_id = aws_internet_gateway.tera-gw.id
  }

  tags = {
    Name = "public-RT"
  }
}

###########################################################
resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.tera-vpc.id
  route {
    cidr_block = var.all-route
    nat_gateway_id = aws_nat_gateway.tera-nat.id
  }

  tags = {
    Name = "private-RT"
  }
}