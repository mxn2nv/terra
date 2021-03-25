provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "terra-rh8" {
  ami		= "ami-09d9c5cdcfb8fc655"
  instance_type = "t2.micro"

  tags = {
    Name = "cesar_terra_rh8"
  }
}
