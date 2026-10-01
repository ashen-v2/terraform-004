terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.26"
    }
  }

  required_version = ">= 1.14.2"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "lab_07" {
  ami           = "ami-0532913178263be11"
  instance_type = "t2.micro"
  tags = {
    Name = var.aws_instance
  }
}