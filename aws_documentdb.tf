resource "aws_docdb_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "docdb-lanchonetedarua-${count.index}"
  cluster_identifier = "docdb-cluster-demo"
  instance_class     = "db.r6g.large"
}

resource "aws_docdb_cluster" "default" {
  cluster_identifier = "docdb-cluster-lanchonetedarua"
  # availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  master_username     = "userlanchonete"
  master_password     = "barbut8chars"
  final_snapshot_identifier = "lanchonetedaruasnp"
}