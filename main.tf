terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "grupo23postech"

    workspaces {
      name = "iac-lanchonetedarua-database"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6NEWESPLE5SGOOWO"
  secret_key = "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"
}