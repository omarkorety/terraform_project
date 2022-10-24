resource "aws_security_group" "allow_ssh" {
  name        = "sG01"
  vpc_id      = module.mynetwork.my_vpc_id
  description = "Allow ssh inbound traffic"

  ingress {
    description = "Allow ssh inbound traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

###############################################################
resource "aws_security_group" "allow_ssh_port_3000" {
  name        = "sG02"
  vpc_id      = module.mynetwork.my_vpc_id
  description = "Allow ssh and port 3000 traffic"

  ingress {
    description = "Allow ssh inbound traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["10.0.0.0/24"]
  }
  ingress {
    description = "Allow port 3000 inbound traffic"
    from_port   = 3000
    to_port     = 3000
    protocol    = "TCP"
    cidr_blocks = ["10.0.0.0/24"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}