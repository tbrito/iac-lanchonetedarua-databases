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

resource "postgresql_database" "produtos" {
    name = "produtos"
    connection_limit = 100
}

resource "postgresql_database" "cliente" {
    name = "cliente"
    connection_limit = 100
}

resource "postgresql_database" "producao" {
    name = "producao"
    connection_limit = 100
}

resource "postgresql_database" "pagamento" {
    name = "pagamento"
    connection_limit = 100
}

resource "postgresql_database" "checkout" {
    name = "checkout"
    connection_limit = 100
}