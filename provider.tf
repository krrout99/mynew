# Set AWS as the provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
  }
  # Use S3 bucket called 'kunal-terraform-backend' as Terraform Backend
  backend "s3" {
    bucket = "kunal-terraform-backend"
    key    = "assignment/tfstate"
    region = "us-east-1"
  }
}

# Setup the AWS Provider Block
provider "aws" {
  region  = var.aws_region
}
