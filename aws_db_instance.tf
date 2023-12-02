# Instancia do banco
resource "aws_db_instance" "lanchonetedaruadb" {
  identifier             = "lanchonetedaruadb"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "15.3"
  parameter_group_name   = aws_db_parameter_group.lanchonetedaruadb.name

  db_name                = "pedidos"
  username               = "postgres"
  password               = "QE1muGg0fwsepsH"

  vpc_security_group_ids = [aws_security_group.postgres.id]
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "aws_db_parameter_group" "lanchonetedaruadb" {
  name   = "lanchonetedaruadb"
  family = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}
