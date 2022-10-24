resource "aws_elasticache_cluster" "my-redis" {
  cluster_id           = "my-redis"
    engine               = "redis"

  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name=aws_elasticache_subnet_group.bar.name
}


resource "aws_elasticache_subnet_group" "bar" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [module.mynetwork.private1_sub,module.mynetwork.private2_sub]
}