output "public1_sub" {
  value = aws_subnet.public_1.id
}
output "public2_sub" {
  value = aws_subnet.public_2.id
}
output "private1_sub" {
  value = aws_subnet.private_1.id
}
output "private2_sub" {
  value = aws_subnet.private_2.id
}
output "my_vpc_id" {
  value = aws_vpc.tera-vpc.id
}
