#associate rout_table to first public subnet
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.pubic-rt.id
}
#########################################################
#associate rout_table to secound public subnet
resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.pubic-rt.id
}
########################################################
#associate rout_table to first private subnet
resource "aws_route_table_association" "apr1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private-rt.id
}
########################################################
#associate rout_table to secound private subnet
resource "aws_route_table_association" "apr2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private-rt.id
}