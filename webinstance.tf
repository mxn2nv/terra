resource "aws_instance" "terra-web-ubuntu" {
  ami		= "ami-031b673f443c2172c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.terra-web-ubuntu.id]

user_data = <<-EOF
            #!/bin/bash
            echo "Hello, World" > index.html
            nohup busybox httpd -f -p 8080 &
            EOF

  tags = {
    Name = "cesar_terra_web_ubuntu"
  }
}