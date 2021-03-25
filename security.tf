resource "aws_security_group" "terra-web-ubuntu" {
  name = "terraform-example-instance-cr"

tags = {
    Name = "ubuntu-web-sg-cr"
}

ingress {
  from_port = 8080 
  to_port   = 8080 
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  
  }
}
