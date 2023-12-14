resource "aws_elasticache_cluster" "main" {
  cluster_id = "lanchonete-redis-cache"
  engine = "redis"
  node_type = "cache.t2.micro"
  num_cache_nodes = 1
  port = 6379
  subnet_group_name    = aws_elasticache_subnet_group.lanchonete.name
}

resource "aws_elasticache_subnet_group" "lanchonete" {
  name       = "lanchonete-cache-subnet"
  subnet_ids = [data.aws_subnet.subnet1a.id, data.aws_subnet.subnet1b.id]
}