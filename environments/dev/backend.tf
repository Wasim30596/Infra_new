terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.40.0"
    }
  }
  backend "s3" {
    bucket = "my-terraform-state-bucket-1504"
    key    = "environments/dev/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}
    
provider "aws" {
  region = var.aws_region
}