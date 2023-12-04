# Database product
provider "postgresql" {
  host      = "lanchonetedaruadb.co2eflozi4t9.us-east-1.rds.amazonaws.com"
  port      = 5432
  database  = "postgres"
  username  = "postgres"
  password  = "QE1muGg0fwsepsH"
  sslmode   = "require"
  superuser = false
}

resource "postgresql_database" "cliente" {
    name = "clientes"
    connection_limit = 100
}