resource "aws_elasticache_parameter_group" "main" {
  name   = "testing-redis-ecache-param"
  family = "redis3.2"

  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_elasticache_cluster" "main" {
  cluster_id = "lanchonete-redis-cache"
  engine = "redis"
  node_type = "cache.t2.micro"
  num_cache_nodes = 1
  port = 6379
  #security_group_ids = ["${var.elasticache_security_groups}"]
  
  lifecycle {
    create_before_destroy = true
  }
}