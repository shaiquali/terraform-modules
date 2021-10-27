resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  subnet_group_name = "elasticache-subnet"
  security_group_ids = "elasticache-sg"
  engine_version       = "3.2.10"
  port                 = 6379
}