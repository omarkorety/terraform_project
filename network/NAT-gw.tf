resource "aws_nat_gateway" "tera-nat" {
  subnet_id     = aws_subnet.public_2.id
  allocation_id = aws_eip.lb.id
  tags = {
    Name = "gw NAT"
  }

}


# connectivity_type deafulf puplic