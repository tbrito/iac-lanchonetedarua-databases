# Database product

provider "postgresql" {
    host = "lanchonetedaruadb.co2eflozi4t9.us-east-1.rds.amazonaws.com"
    port = 5432
    username = "postgres"
    password = "QE1muGg0fwsepsH"
    sslmode = "disable"
}

resource "postgresql_database" "produtos" {
    name = "produtos"
    connection_limit = 100
}