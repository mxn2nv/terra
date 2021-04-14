resource "aws_instance" "terra-web-ubuntu" {
  ami		= "ami-031b673f443c2172c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.terra-web-ubuntu.id]

user_data = <<-EOF
            #!/bin/bash
            echo "Hello, This web server was created using Terraform by Cesar Rodriguez" > index.html
            nohup busybox httpd -f -p ${var.server_port} &
            EOF

  tags = {
    Name = "cesar_terra_web_ubuntu"
  }
}