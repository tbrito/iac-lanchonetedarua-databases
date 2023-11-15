terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "lanchonetedarua"

    workspaces {
      name = "iac-lanchonetedarua-database"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Instancia do banco
resource "aws_db_instance" "lanchonetedarua3" {
  identifier             = "lanchonetedarua3"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "15.3"
  username               = "postgres"
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.lanchonetedarua3.name
  vpc_security_group_ids = [aws_security_group.rds2.id]
  parameter_group_name   = aws_db_parameter_group.lanchonetedarua3.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "aws_db_parameter_group" "lanchonetedarua3" {
  name   = "lanchonetedarua3"
  family = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_ssm_parameter" "postgres_password" {
  name  = "/app/postgres/password"
  type  = "String"
  value = "dblanchonetederuapass"
}

resource "aws_ssm_parameter" "postgres_db" {
  name  = "/app/postgres/database"
  type  = "String"
  value = "lanchonetedarua"
}
