terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket       = "khan-faizan-terraform-state-2026"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-090d68841c2a28756"
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-App-Server"
  }
}