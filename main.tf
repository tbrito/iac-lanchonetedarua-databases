terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.12.0"
    }
  }
  required_version = ">= 1.1.0"

  # cloud {
  #   organization = "grupo23postechfiapi"

  #   workspaces {
  #     name = "lanchonete-da-rua-iac"
  #   }
  # }
}

# configuracoes aws - tiagoBrito
provider "aws" {
  region = "us-east-1"
  access_key = var.client_key
  secret_key = var.client_secret
  # token = "FwoGZXIvYXdzEEsaDKyNATan2q7yYy0xlCLFAZxRAaY/4eHn7W1AJgsYQCPh/SemX7U6Cdraa8qEyS2MmDX7I7pYNd4VV1XG+eq7wc1qXMsNuyAI0MUieUjN09t1EK1Kl+H+aG3Lf5VNEW8ZhXxcpCrhRgAMBa3r1QLMgdbqZGNOgzSKE9ZjxfUiAqIk7ze60JqK5kPWpi6ZFxqcnZ9VeJB7Y6E+5RveTah6bBICrTU/2JCgr4J70qeE1FSsFjhg0r6w2crJbAyPVevo19VsbmbwTIlLGjS1n4KqnrLj7rioKMy7360GMi0wpKuR4hLb4zReVEA85Dc8yHSjjSYbDwb6La8raWIqxj8nDbSrxwnm8Cd6CVk="
}


data "aws_subnet" "subnet1a" {
  id = "subnet-03df6cdb0ce9d859b"
}

data "aws_subnet" "subnet1b" {
  id = "subnet-0e276900afb704937"
}

data "aws_vpc" "default" {
  id = "vpc-04adaa77e36d1d98c"
}
