resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "webserver-ashen" {
  source     = "../modules/webserver"
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/28"
  ami        = "ami-0532913178263be11"
  # Remember, select an AMI that exists in your AWS region.
  # If in doubt, use the AMI above and the us-east-2 region.
  instance_type  = "t3.micro"
  webserver_name = "Ashen's"
}


