output "public_ip" { 
    value       = aws_instance.terra-web-ubuntu.public_ip
    description = "The public IP address of the web server"
}