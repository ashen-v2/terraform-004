variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
}

variable "ami" {
  type        = string
  description = "ami"
}

variable "instance_type" {
  type        = string
  description = "instance_type"
}

variable "webserver_name" {
  type        = string
  description = "webserver_name"
}