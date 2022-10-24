resource "aws_db_subnet_group" "private_subnets" {
  name       = "private_subnet"
  subnet_ids = [module.mynetwork.private1_sub,module.mynetwork.private2_sub]

  tags = {
    Name = "private_subnets"
  }
}

resource "aws_db_instance" "mydb" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "omar"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name=aws_db_subnet_group.private_subnets.name

}