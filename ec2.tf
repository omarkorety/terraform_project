resource "aws_instance" "bastion" {
ami           = var.my_ami
 instance_type = "t2.micro"
 subnet_id=module.mynetwork.public1_sub
#  security_groups=[aws_security_group.allow_ssh.name]
 key_name=aws_key_pair.terraform-key.key_name
 associate_public_ip_address=true
vpc_security_group_ids =[aws_security_group.allow_ssh.id]
availability_zone = var.availability_zone_a

# provisioner "local-exex" {
#   commmand=" echo $(self.public_ip) "

# }

}
resource "aws_key_pair" "terraform-key" {
  key_name   = "key-name"
  public_key = "key"
}

######################################################
resource "aws_instance" "application" {
  # ami           = "ami-09d3b3274b6c5d4aa" 
  ami           = var.my_ami

 instance_type = "t2.micro"
 subnet_id=module.mynetwork.private2_sub
#  security_groups=[aws_security_group.allow_ssh.name]
 key_name=aws_key_pair.terraform-key.key_name
 associate_public_ip_address=true
vpc_security_group_ids =[aws_security_group.allow_ssh_port_3000.id]
availability_zone = var.availability_zone_b


}
