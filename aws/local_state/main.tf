terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.11.2"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-000810356197b9b0d"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

