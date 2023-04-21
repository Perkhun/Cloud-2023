terraform {
  backend "s3" {
    bucket = "886800482741-terraform-tfstate"
    key = "dev/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-tfstate-lock"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.6.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}