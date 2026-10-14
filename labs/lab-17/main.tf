## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {

   cloud {
    
    organization = "my-learning231"

    workspaces {
      name = "terraform-004"
    }
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }



}


# Variable blocks directly within the main.tf. No arguments necessary.
variable "region" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  region     = var.region
}

# Add .gitignore file in this directory with the terraform.tfvars

resource "aws_instance" "tc_instance" {
  ami           = "ami-095f155a67469a548"
  instance_type = "t3.micro"

  tags = {
    Name = "TC-triggered-instance"
  }
}