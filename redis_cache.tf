resource "aws_elasticache_cluster" "lanchonentedaruacache" {
  cluster_id           = "cluster-lanchonete"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  port                 = 6379
}