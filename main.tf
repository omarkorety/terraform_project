module "mynetwork" {
  source        = "./network"
  my_vpc_cidr      = "10.0.0.0/24"
  private1_cidr = "10.0.0.32/28"
  private2_cidr = "10.0.0.48/28"
  public1_cidr  = "10.0.0.0/28"
  public2_cidr  = "10.0.0.16/28"
  Az1 = var.availability_zone_a
  Az2 = var.availability_zone_b

}