terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = "default"

  default_tags {
    tags = {
      Environment = "Sunday_Demo"
      ManagedBy   = "Terraform"
    }
  }
}
