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

resource "aws_subnet" "webserver_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
}

resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.webserver_subnet.id

  tags = {
    name = "${var.webserver_name} webserver"
  }
}